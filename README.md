## Ast explorer cli

[![Pub Version][pub_version_badge]][pub_package_link]
[![Pub Points][pub_points_badge]][pub_points_link]
[![License: MIT][license_badge]][license_link]

A Command-Line Interface for explorer flutter/dart simplified ast.

**The goal is to have the type, name, value, offset and end in the file.**

---

## Getting Started 🚀

If the CLI application is available on [pub](https://pub.dev), activate globally via:

```sh
dart pub global activate ast_explorer_cli
```

## Usage

```sh
# Check unused translations
ast_explorer tree <folder-of-app>
```

## Running locally

```sh
dart pub global activate --source=path . && ast_explorer tree example/main.dart
```

## Running Tests with coverage 🧪

To run all unit tests use the following command:

```sh
dart pub global activate coverage
dart test --coverage=coverage
dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage/lcov.info
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

## Build version

```sh
dart run build_runner build
```

---

Generated by the [Very Good CLI][very_good_cli_link] 🤖

[license_badge]: https://img.shields.io/github/license/lsaudon/ast_explorer_cli
[license_link]: https://img.shields.io/github/license/lsaudon/ast_explorer_cli
[very_good_cli_link]: https://github.com/VeryGoodOpenSource/very_good_cli
[pub_points_badge]: https://img.shields.io/pub/points/ast_explorer_cli
[pub_version_badge]: https://img.shields.io/pub/v/ast_explorer_cli
[pub_package_link]: https://pub.dev/packages/ast_explorer_cli
[pub_points_link]: https://pub.dev/packages/ast_explorer_cli/score
