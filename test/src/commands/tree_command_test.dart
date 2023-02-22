import 'dart:io';

import 'package:ast_explorer_cli/src/command_runner.dart';
import 'package:ast_explorer_cli/src/commands/commands.dart';
import 'package:file/file.dart';
import 'package:file/memory.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

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

  const fileContent = r'''
// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}''';

  test('test name', () async {
    fileSystem.file('main.dart')
      ..createSync(recursive: true)
      ..writeAsStringSync(fileContent);

    final exitCode =
        await commandRunner.run([TreeCommand.commandName, 'main.dart']);

    verify(
      () => logger.info(
        '''{"childEntities":[],"declarations":[{"offset":258,"end":289,"type":"FunctionDeclarationImpl","childEntities":[{"offset":258,"end":262},{"offset":263,"end":267},{"offset":267,"end":289}]},{"offset":291,"end":618,"type":"ClassDeclarationImpl","childEntities":[{"offset":291,"end":296},{"offset":297,"end":302},{"offset":303,"end":326},{"offset":327,"end":328},{"offset":331,"end":616},{"offset":617,"end":618}]},{"offset":620,"end":840,"type":"ClassDeclarationImpl","childEntities":[{"offset":620,"end":625},{"offset":626,"end":636},{"offset":637,"end":659},{"offset":660,"end":661},{"offset":664,"end":683},{"offset":687,"end":768},{"offset":772,"end":838},{"offset":839,"end":840}]},{"offset":842,"end":1685,"type":"ClassDeclarationImpl","childEntities":[{"offset":842,"end":847},{"offset":848,"end":864},{"offset":865,"end":890},{"offset":891,"end":892},{"offset":895,"end":912},{"offset":916,"end":990},{"offset":994,"end":1683},{"offset":1684,"end":1685}]}],"end":1685,"offset":0,"type":"CompilationUnitImpl"}''',
      ),
    );

    expect(exitCode, ExitCode.success.code);
  });
}
