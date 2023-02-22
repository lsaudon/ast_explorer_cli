import 'dart:io';

import 'package:ast_explorer_cli/src/command_runner.dart';
import 'package:ast_explorer_cli/src/commands/commands.dart';
import 'package:file/file.dart';
import 'package:file/memory.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'input.dart';
import 'output.dart';

class _MockLogger extends Mock implements Logger {}

void main() {
  late FileSystem fileSystem;
  late Logger logger;
  late AstExplorerCliCommandRunner commandRunner;

  setUp(() {
    fileSystem = MemoryFileSystem.test(
      style:
          Platform.isWindows ? FileSystemStyle.windows : FileSystemStyle.posix,
    );
    logger = _MockLogger();
    commandRunner = AstExplorerCliCommandRunner(
      logger: logger,
      fileSystem: fileSystem,
    );
  });

  test('test name', () async {
    fileSystem.file('main.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync(inputContent);

    final exitCode =
        await commandRunner.run([TreeCommand.commandName, 'main.dart']);

    verify(() => logger.info(output));

    expect(exitCode, ExitCode.success.code);
  });
}
