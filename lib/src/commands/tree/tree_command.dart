import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:args/command_runner.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';
import 'package:file/file.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:path/path.dart' as p;

/// TreeCommand
class TreeCommand extends Command<int> {
  /// Constructor of TreeCommand
  TreeCommand({
    required final Logger logger,
    required final FileSystem fileSystem,
  })  : _logger = logger,
        _fileSystem = fileSystem;

  final Logger _logger;
  final FileSystem _fileSystem;

  @override
  String get description => 'Ast tree';

  /// commandName
  static const String commandName = 'tree';

  @override
  String get name => commandName;

  @override
  Future<int> run() async {
    final path = p.join(
      _fileSystem.currentDirectory.path,
      argResults!.rest.isNotEmpty ? argResults?.rest.first : '',
    );
    final content = await _fileSystem.file(path).readAsString();
    final parseStringResult = parseString(content: content);
    final dartCompilationUnit = DartAstNode(parseStringResult.unit);
    _logger.info(dartCompilationUnit.toJson());
    return ExitCode.success.code;
  }
}
