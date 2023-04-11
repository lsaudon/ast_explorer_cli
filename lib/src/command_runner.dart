import 'package:args/args.dart';
import 'package:args/command_runner.dart';
import 'package:ast_explorer_cli/src/commands/commands.dart';
import 'package:ast_explorer_cli/src/version.dart';
import 'package:cli_completion/cli_completion.dart';
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:pub_updater/pub_updater.dart';

/// executableName
const executableName = 'ast_explorer';

/// packageName
const packageName = 'ast_explorer_cli';

/// description
const description = 'A Command-Line Interface for explorer dart ast.';

/// AstExplorerCliCommandRunner
class AstExplorerCliCommandRunner extends CompletionCommandRunner<int> {
  /// Constructor of AstExplorerCliCommandRunner
  AstExplorerCliCommandRunner({
    final Logger? logger,
    final PubUpdater? pubUpdater,
    final FileSystem? fileSystem,
  })  : _logger = logger ?? Logger(),
        _pubUpdater = pubUpdater ?? PubUpdater(),
        _fileSystem = fileSystem ?? const LocalFileSystem(),
        super(executableName, description) {
    argParser
      ..addFlag(
        'version',
        abbr: 'v',
        negatable: false,
        help: 'Print the current version.',
      )
      ..addFlag(
        'verbose',
        help: 'Noisy logging, including all shell commands executed.',
      );

    addCommand(TreeCommand(logger: _logger, fileSystem: _fileSystem));
    addCommand(UpdateCommand(logger: _logger, pubUpdater: _pubUpdater));
  }

  @override
  void printUsage() => _logger.info(usage);

  final Logger _logger;
  final PubUpdater _pubUpdater;
  final FileSystem _fileSystem;

  @override
  Future<int> run(final Iterable<String> args) async {
    try {
      final topLevelResults = parse(args);
      if (topLevelResults['verbose'] == true) {
        _logger.level = Level.verbose;
      }
      return await runCommand(topLevelResults) ?? ExitCode.success.code;
    } on FormatException catch (e, stackTrace) {
      _logger
        ..err(e.message)
        ..err('$stackTrace')
        ..info('')
        ..info(usage);
      return ExitCode.usage.code;
    } on UsageException catch (e) {
      _logger
        ..err(e.message)
        ..info('')
        ..info(e.usage);
      return ExitCode.usage.code;
    }
  }

  @override
  Future<int?> runCommand(final ArgResults topLevelResults) async {
    if (topLevelResults.command?.name == 'completion') {
      await super.runCommand(topLevelResults);
      return ExitCode.success.code;
    }

    _logger
      ..detail('Argument information:')
      ..detail('  Top level options:');
    for (final option in topLevelResults.options) {
      if (topLevelResults.wasParsed(option)) {
        _logger.detail('  - $option: ${topLevelResults[option]}');
      }
    }
    if (topLevelResults.command != null) {
      final commandResult = topLevelResults.command!;
      _logger
        ..detail('  Command: ${commandResult.name}')
        ..detail('    Command options:');
      for (final option in commandResult.options) {
        if (commandResult.wasParsed(option)) {
          _logger.detail('    - $option: ${commandResult[option]}');
        }
      }
    }

    final int? exitCode;
    if (topLevelResults['version'] == true) {
      _logger.info(packageVersion);
      exitCode = ExitCode.success.code;
    } else {
      exitCode = await super.runCommand(topLevelResults);
    }

    if (topLevelResults.command?.name != UpdateCommand.commandName) {
      await _checkForUpdates();
    }

    return exitCode;
  }

  Future<void> _checkForUpdates() async {
    try {
      final latestVersion = await _pubUpdater.getLatestVersion(packageName);
      final isUpToDate = packageVersion == latestVersion;
      if (!isUpToDate) {
        _logger
          ..info('')
          ..info(
            '''
${lightYellow.wrap('Update available!')} ${lightCyan.wrap(packageVersion)} \u2192 ${lightCyan.wrap(latestVersion)}
Run ${lightCyan.wrap('$executableName update')} to update''',
          );
      }
    } on Exception catch (_) {}
  }
}
