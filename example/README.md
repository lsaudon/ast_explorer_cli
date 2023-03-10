# Example

```sh
# Activate Very Good CLI
dart pub global activate ast_explorer_cli

# See list of available commands
ast_explorer --help
```

## Example 1

```sh
ast_explorer tree main.dart > ouput.json
```

**`main.dart`**

```dart
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
  double _counterDouble = 0.0;

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
}
```

**`output.json`**

```json
{
  "childEntities": [
    {
      "offset": 217,
      "end": 256,
      "type": "ImportDirectiveImpl",
      "childEntities": [
        {
          "offset": 224,
          "end": 255,
          "type": "SimpleStringLiteralImpl",
          "value": "package:flutter/material.dart"
        }
      ]
    },
    {
      "offset": 258,
      "end": 289,
      "type": "FunctionDeclarationImpl",
      "childEntities": [
        {
          "offset": 258,
          "end": 262,
          "type": "NamedTypeImpl",
          "childEntities": [
            {
              "offset": 258,
              "end": 262,
              "type": "SimpleIdentifierImpl",
              "token": "void"
            }
          ]
        },
        {
          "offset": 267,
          "end": 289,
          "type": "FunctionExpressionImpl",
          "childEntities": [
            { "offset": 267, "end": 269, "type": "FormalParameterListImpl" },
            {
              "offset": 270,
              "end": 289,
              "type": "ExpressionFunctionBodyImpl",
              "childEntities": [
                {
                  "offset": 273,
                  "end": 288,
                  "type": "MethodInvocationImpl",
                  "childEntities": [
                    {
                      "offset": 273,
                      "end": 279,
                      "type": "SimpleIdentifierImpl",
                      "token": "runApp"
                    },
                    {
                      "offset": 279,
                      "end": 288,
                      "type": "ArgumentListImpl",
                      "childEntities": [
                        {
                          "offset": 280,
                          "end": 287,
                          "type": "MethodInvocationImpl",
                          "childEntities": [
                            {
                              "offset": 280,
                              "end": 285,
                              "type": "SimpleIdentifierImpl",
                              "token": "MyApp"
                            },
                            {
                              "offset": 285,
                              "end": 287,
                              "type": "ArgumentListImpl"
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "offset": 291,
      "end": 618,
      "type": "ClassDeclarationImpl",
      "childEntities": [
        {
          "offset": 303,
          "end": 326,
          "type": "ExtendsClauseImpl",
          "childEntities": [
            {
              "offset": 311,
              "end": 326,
              "type": "NamedTypeImpl",
              "childEntities": [
                {
                  "offset": 311,
                  "end": 326,
                  "type": "SimpleIdentifierImpl",
                  "token": "StatelessWidget"
                }
              ]
            }
          ]
        },
        {
          "offset": 331,
          "end": 616,
          "type": "MethodDeclarationImpl",
          "childEntities": [
            {
              "offset": 331,
              "end": 340,
              "type": "AnnotationImpl",
              "childEntities": [
                {
                  "offset": 332,
                  "end": 340,
                  "type": "SimpleIdentifierImpl",
                  "token": "override"
                }
              ]
            },
            {
              "offset": 343,
              "end": 349,
              "type": "NamedTypeImpl",
              "childEntities": [
                {
                  "offset": 343,
                  "end": 349,
                  "type": "SimpleIdentifierImpl",
                  "token": "Widget"
                }
              ]
            },
            {
              "offset": 355,
              "end": 377,
              "type": "FormalParameterListImpl",
              "childEntities": [
                {
                  "offset": 356,
                  "end": 376,
                  "type": "SimpleFormalParameterImpl",
                  "childEntities": [
                    {
                      "offset": 356,
                      "end": 368,
                      "type": "NamedTypeImpl",
                      "childEntities": [
                        {
                          "offset": 356,
                          "end": 368,
                          "type": "SimpleIdentifierImpl",
                          "token": "BuildContext"
                        }
                      ]
                    }
                  ],
                  "name": "context"
                }
              ]
            },
            {
              "offset": 378,
              "end": 616,
              "type": "BlockFunctionBodyImpl",
              "childEntities": [
                {
                  "offset": 378,
                  "end": 616,
                  "type": "BlockImpl",
                  "childEntities": [
                    {
                      "offset": 384,
                      "end": 612,
                      "type": "ReturnStatementImpl",
                      "childEntities": [
                        {
                          "offset": 391,
                          "end": 611,
                          "type": "MethodInvocationImpl",
                          "childEntities": [
                            {
                              "offset": 391,
                              "end": 402,
                              "type": "SimpleIdentifierImpl",
                              "token": "MaterialApp"
                            },
                            {
                              "offset": 402,
                              "end": 611,
                              "type": "ArgumentListImpl",
                              "childEntities": [
                                {
                                  "offset": 410,
                                  "end": 431,
                                  "type": "NamedExpressionImpl",
                                  "childEntities": [
                                    {
                                      "offset": 410,
                                      "end": 416,
                                      "type": "LabelImpl",
                                      "childEntities": [
                                        {
                                          "offset": 410,
                                          "end": 415,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "title"
                                        }
                                      ]
                                    },
                                    {
                                      "offset": 417,
                                      "end": 431,
                                      "type": "SimpleStringLiteralImpl",
                                      "value": "Flutter Demo"
                                    }
                                  ]
                                },
                                {
                                  "offset": 439,
                                  "end": 472,
                                  "type": "NamedExpressionImpl",
                                  "childEntities": [
                                    {
                                      "offset": 439,
                                      "end": 466,
                                      "type": "LabelImpl",
                                      "childEntities": [
                                        {
                                          "offset": 439,
                                          "end": 465,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "debugShowCheckedModeBanner"
                                        }
                                      ]
                                    },
                                    {
                                      "offset": 467,
                                      "end": 472,
                                      "type": "BooleanLiteralImpl",
                                      "value": false
                                    }
                                  ]
                                },
                                {
                                  "offset": 480,
                                  "end": 541,
                                  "type": "NamedExpressionImpl",
                                  "childEntities": [
                                    {
                                      "offset": 480,
                                      "end": 486,
                                      "type": "LabelImpl",
                                      "childEntities": [
                                        {
                                          "offset": 480,
                                          "end": 485,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "theme"
                                        }
                                      ]
                                    },
                                    {
                                      "offset": 487,
                                      "end": 541,
                                      "type": "MethodInvocationImpl",
                                      "childEntities": [
                                        {
                                          "offset": 487,
                                          "end": 496,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "ThemeData"
                                        },
                                        {
                                          "offset": 496,
                                          "end": 541,
                                          "type": "ArgumentListImpl",
                                          "childEntities": [
                                            {
                                              "offset": 506,
                                              "end": 532,
                                              "type": "NamedExpressionImpl",
                                              "childEntities": [
                                                {
                                                  "offset": 506,
                                                  "end": 520,
                                                  "type": "LabelImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 506,
                                                      "end": 519,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "primarySwatch"
                                                    }
                                                  ]
                                                },
                                                {
                                                  "offset": 521,
                                                  "end": 532,
                                                  "type": "PrefixedIdentifierImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 521,
                                                      "end": 527,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "Colors"
                                                    },
                                                    {
                                                      "offset": 528,
                                                      "end": 532,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "blue"
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "offset": 549,
                                  "end": 604,
                                  "type": "NamedExpressionImpl",
                                  "childEntities": [
                                    {
                                      "offset": 549,
                                      "end": 554,
                                      "type": "LabelImpl",
                                      "childEntities": [
                                        {
                                          "offset": 549,
                                          "end": 553,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "home"
                                        }
                                      ]
                                    },
                                    {
                                      "offset": 555,
                                      "end": 604,
                                      "type": "InstanceCreationExpressionImpl",
                                      "childEntities": [
                                        {
                                          "offset": 561,
                                          "end": 571,
                                          "type": "ConstructorNameImpl",
                                          "childEntities": [
                                            {
                                              "offset": 561,
                                              "end": 571,
                                              "type": "NamedTypeImpl",
                                              "childEntities": [
                                                {
                                                  "offset": 561,
                                                  "end": 571,
                                                  "type": "SimpleIdentifierImpl",
                                                  "token": "MyHomePage"
                                                }
                                              ]
                                            }
                                          ]
                                        },
                                        {
                                          "offset": 571,
                                          "end": 604,
                                          "type": "ArgumentListImpl",
                                          "childEntities": [
                                            {
                                              "offset": 572,
                                              "end": 603,
                                              "type": "NamedExpressionImpl",
                                              "childEntities": [
                                                {
                                                  "offset": 572,
                                                  "end": 578,
                                                  "type": "LabelImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 572,
                                                      "end": 577,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "title"
                                                    }
                                                  ]
                                                },
                                                {
                                                  "offset": 579,
                                                  "end": 603,
                                                  "type": "SimpleStringLiteralImpl",
                                                  "value": "Flutter Demo Home Page"
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "offset": 620,
      "end": 840,
      "type": "ClassDeclarationImpl",
      "childEntities": [
        {
          "offset": 637,
          "end": 659,
          "type": "ExtendsClauseImpl",
          "childEntities": [
            {
              "offset": 645,
              "end": 659,
              "type": "NamedTypeImpl",
              "childEntities": [
                {
                  "offset": 645,
                  "end": 659,
                  "type": "SimpleIdentifierImpl",
                  "token": "StatefulWidget"
                }
              ]
            }
          ]
        },
        {
          "offset": 664,
          "end": 683,
          "type": "FieldDeclarationImpl",
          "childEntities": [
            {
              "offset": 664,
              "end": 682,
              "type": "VariableDeclarationListImpl",
              "childEntities": [
                {
                  "offset": 670,
                  "end": 676,
                  "type": "NamedTypeImpl",
                  "childEntities": [
                    {
                      "offset": 670,
                      "end": 676,
                      "type": "SimpleIdentifierImpl",
                      "token": "String"
                    }
                  ]
                },
                {
                  "offset": 677,
                  "end": 682,
                  "type": "VariableDeclarationImpl",
                  "name": "title"
                }
              ]
            }
          ]
        },
        {
          "offset": 687,
          "end": 768,
          "type": "ConstructorDeclarationImpl",
          "childEntities": [
            {
              "offset": 693,
              "end": 703,
              "type": "SimpleIdentifierImpl",
              "token": "MyHomePage"
            },
            {
              "offset": 703,
              "end": 749,
              "type": "FormalParameterListImpl",
              "childEntities": [
                {
                  "offset": 710,
                  "end": 718,
                  "type": "DefaultFormalParameterImpl",
                  "childEntities": [
                    {
                      "offset": 710,
                      "end": 718,
                      "type": "SimpleFormalParameterImpl",
                      "childEntities": [
                        {
                          "offset": 710,
                          "end": 714,
                          "type": "NamedTypeImpl",
                          "childEntities": [
                            {
                              "offset": 710,
                              "end": 713,
                              "type": "SimpleIdentifierImpl",
                              "token": "Key"
                            }
                          ]
                        }
                      ],
                      "name": "key"
                    }
                  ],
                  "name": "key"
                },
                {
                  "offset": 724,
                  "end": 743,
                  "type": "DefaultFormalParameterImpl",
                  "childEntities": [
                    {
                      "offset": 724,
                      "end": 743,
                      "type": "FieldFormalParameterImpl",
                      "name": "title"
                    }
                  ],
                  "name": "title"
                }
              ]
            },
            {
              "offset": 752,
              "end": 767,
              "type": "SuperConstructorInvocationImpl",
              "childEntities": [
                {
                  "offset": 757,
                  "end": 767,
                  "type": "ArgumentListImpl",
                  "childEntities": [
                    {
                      "offset": 758,
                      "end": 766,
                      "type": "NamedExpressionImpl",
                      "childEntities": [
                        {
                          "offset": 758,
                          "end": 762,
                          "type": "LabelImpl",
                          "childEntities": [
                            {
                              "offset": 758,
                              "end": 761,
                              "type": "SimpleIdentifierImpl",
                              "token": "key"
                            }
                          ]
                        },
                        {
                          "offset": 763,
                          "end": 766,
                          "type": "SimpleIdentifierImpl",
                          "token": "key"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            { "offset": 767, "end": 768, "type": "EmptyFunctionBodyImpl" }
          ]
        },
        {
          "offset": 772,
          "end": 838,
          "type": "MethodDeclarationImpl",
          "childEntities": [
            {
              "offset": 772,
              "end": 781,
              "type": "AnnotationImpl",
              "childEntities": [
                {
                  "offset": 773,
                  "end": 781,
                  "type": "SimpleIdentifierImpl",
                  "token": "override"
                }
              ]
            },
            {
              "offset": 784,
              "end": 801,
              "type": "NamedTypeImpl",
              "childEntities": [
                {
                  "offset": 784,
                  "end": 789,
                  "type": "SimpleIdentifierImpl",
                  "token": "State"
                },
                {
                  "offset": 789,
                  "end": 801,
                  "type": "TypeArgumentListImpl",
                  "childEntities": [
                    {
                      "offset": 790,
                      "end": 800,
                      "type": "NamedTypeImpl",
                      "childEntities": [
                        {
                          "offset": 790,
                          "end": 800,
                          "type": "SimpleIdentifierImpl",
                          "token": "MyHomePage"
                        }
                      ]
                    }
                  ]
                }
              ]
            },
            { "offset": 813, "end": 815, "type": "FormalParameterListImpl" },
            {
              "offset": 816,
              "end": 838,
              "type": "ExpressionFunctionBodyImpl",
              "childEntities": [
                {
                  "offset": 819,
                  "end": 837,
                  "type": "MethodInvocationImpl",
                  "childEntities": [
                    {
                      "offset": 819,
                      "end": 835,
                      "type": "SimpleIdentifierImpl",
                      "token": "_MyHomePageState"
                    },
                    { "offset": 835, "end": 837, "type": "ArgumentListImpl" }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      "offset": 842,
      "end": 1716,
      "type": "ClassDeclarationImpl",
      "childEntities": [
        {
          "offset": 865,
          "end": 890,
          "type": "ExtendsClauseImpl",
          "childEntities": [
            {
              "offset": 873,
              "end": 890,
              "type": "NamedTypeImpl",
              "childEntities": [
                {
                  "offset": 873,
                  "end": 878,
                  "type": "SimpleIdentifierImpl",
                  "token": "State"
                },
                {
                  "offset": 878,
                  "end": 890,
                  "type": "TypeArgumentListImpl",
                  "childEntities": [
                    {
                      "offset": 879,
                      "end": 889,
                      "type": "NamedTypeImpl",
                      "childEntities": [
                        {
                          "offset": 879,
                          "end": 889,
                          "type": "SimpleIdentifierImpl",
                          "token": "MyHomePage"
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "offset": 895,
          "end": 912,
          "type": "FieldDeclarationImpl",
          "childEntities": [
            {
              "offset": 895,
              "end": 911,
              "type": "VariableDeclarationListImpl",
              "childEntities": [
                {
                  "offset": 895,
                  "end": 898,
                  "type": "NamedTypeImpl",
                  "childEntities": [
                    {
                      "offset": 895,
                      "end": 898,
                      "type": "SimpleIdentifierImpl",
                      "token": "int"
                    }
                  ]
                },
                {
                  "offset": 899,
                  "end": 911,
                  "type": "VariableDeclarationImpl",
                  "childEntities": [
                    {
                      "offset": 910,
                      "end": 911,
                      "type": "IntegerLiteralImpl",
                      "value": 0
                    }
                  ],
                  "name": "_counter"
                }
              ]
            }
          ]
        },
        {
          "offset": 915,
          "end": 943,
          "type": "FieldDeclarationImpl",
          "childEntities": [
            {
              "offset": 915,
              "end": 942,
              "type": "VariableDeclarationListImpl",
              "childEntities": [
                {
                  "offset": 915,
                  "end": 921,
                  "type": "NamedTypeImpl",
                  "childEntities": [
                    {
                      "offset": 915,
                      "end": 921,
                      "type": "SimpleIdentifierImpl",
                      "token": "double"
                    }
                  ]
                },
                {
                  "offset": 922,
                  "end": 942,
                  "type": "VariableDeclarationImpl",
                  "childEntities": [
                    {
                      "offset": 939,
                      "end": 942,
                      "type": "DoubleLiteralImpl",
                      "value": 0.0
                    }
                  ],
                  "name": "_counterDouble"
                }
              ]
            }
          ]
        },
        {
          "offset": 947,
          "end": 1021,
          "type": "MethodDeclarationImpl",
          "childEntities": [
            {
              "offset": 947,
              "end": 951,
              "type": "NamedTypeImpl",
              "childEntities": [
                {
                  "offset": 947,
                  "end": 951,
                  "type": "SimpleIdentifierImpl",
                  "token": "void"
                }
              ]
            },
            { "offset": 969, "end": 971, "type": "FormalParameterListImpl" },
            {
              "offset": 972,
              "end": 1021,
              "type": "BlockFunctionBodyImpl",
              "childEntities": [
                {
                  "offset": 972,
                  "end": 1021,
                  "type": "BlockImpl",
                  "childEntities": [
                    {
                      "offset": 978,
                      "end": 1017,
                      "type": "ExpressionStatementImpl",
                      "childEntities": [
                        {
                          "offset": 978,
                          "end": 1016,
                          "type": "MethodInvocationImpl",
                          "childEntities": [
                            {
                              "offset": 978,
                              "end": 986,
                              "type": "SimpleIdentifierImpl",
                              "token": "setState"
                            },
                            {
                              "offset": 986,
                              "end": 1016,
                              "type": "ArgumentListImpl",
                              "childEntities": [
                                {
                                  "offset": 987,
                                  "end": 1015,
                                  "type": "FunctionExpressionImpl",
                                  "childEntities": [
                                    {
                                      "offset": 987,
                                      "end": 989,
                                      "type": "FormalParameterListImpl"
                                    },
                                    {
                                      "offset": 990,
                                      "end": 1015,
                                      "type": "BlockFunctionBodyImpl",
                                      "childEntities": [
                                        {
                                          "offset": 990,
                                          "end": 1015,
                                          "type": "BlockImpl",
                                          "childEntities": [
                                            {
                                              "offset": 998,
                                              "end": 1009,
                                              "type": "ExpressionStatementImpl",
                                              "childEntities": [
                                                {
                                                  "offset": 998,
                                                  "end": 1008,
                                                  "type": "PostfixExpressionImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 998,
                                                      "end": 1006,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "_counter"
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          "offset": 1025,
          "end": 1714,
          "type": "MethodDeclarationImpl",
          "childEntities": [
            {
              "offset": 1025,
              "end": 1034,
              "type": "AnnotationImpl",
              "childEntities": [
                {
                  "offset": 1026,
                  "end": 1034,
                  "type": "SimpleIdentifierImpl",
                  "token": "override"
                }
              ]
            },
            {
              "offset": 1037,
              "end": 1043,
              "type": "NamedTypeImpl",
              "childEntities": [
                {
                  "offset": 1037,
                  "end": 1043,
                  "type": "SimpleIdentifierImpl",
                  "token": "Widget"
                }
              ]
            },
            {
              "offset": 1049,
              "end": 1071,
              "type": "FormalParameterListImpl",
              "childEntities": [
                {
                  "offset": 1050,
                  "end": 1070,
                  "type": "SimpleFormalParameterImpl",
                  "childEntities": [
                    {
                      "offset": 1050,
                      "end": 1062,
                      "type": "NamedTypeImpl",
                      "childEntities": [
                        {
                          "offset": 1050,
                          "end": 1062,
                          "type": "SimpleIdentifierImpl",
                          "token": "BuildContext"
                        }
                      ]
                    }
                  ],
                  "name": "context"
                }
              ]
            },
            {
              "offset": 1072,
              "end": 1714,
              "type": "BlockFunctionBodyImpl",
              "childEntities": [
                {
                  "offset": 1072,
                  "end": 1714,
                  "type": "BlockImpl",
                  "childEntities": [
                    {
                      "offset": 1078,
                      "end": 1710,
                      "type": "ReturnStatementImpl",
                      "childEntities": [
                        {
                          "offset": 1085,
                          "end": 1709,
                          "type": "MethodInvocationImpl",
                          "childEntities": [
                            {
                              "offset": 1085,
                              "end": 1093,
                              "type": "SimpleIdentifierImpl",
                              "token": "Scaffold"
                            },
                            {
                              "offset": 1093,
                              "end": 1709,
                              "type": "ArgumentListImpl",
                              "childEntities": [
                                {
                                  "offset": 1101,
                                  "end": 1159,
                                  "type": "NamedExpressionImpl",
                                  "childEntities": [
                                    {
                                      "offset": 1101,
                                      "end": 1108,
                                      "type": "LabelImpl",
                                      "childEntities": [
                                        {
                                          "offset": 1101,
                                          "end": 1107,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "appBar"
                                        }
                                      ]
                                    },
                                    {
                                      "offset": 1109,
                                      "end": 1159,
                                      "type": "MethodInvocationImpl",
                                      "childEntities": [
                                        {
                                          "offset": 1109,
                                          "end": 1115,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "AppBar"
                                        },
                                        {
                                          "offset": 1115,
                                          "end": 1159,
                                          "type": "ArgumentListImpl",
                                          "childEntities": [
                                            {
                                              "offset": 1125,
                                              "end": 1150,
                                              "type": "NamedExpressionImpl",
                                              "childEntities": [
                                                {
                                                  "offset": 1125,
                                                  "end": 1131,
                                                  "type": "LabelImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 1125,
                                                      "end": 1130,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "title"
                                                    }
                                                  ]
                                                },
                                                {
                                                  "offset": 1132,
                                                  "end": 1150,
                                                  "type": "MethodInvocationImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 1132,
                                                      "end": 1136,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "Text"
                                                    },
                                                    {
                                                      "offset": 1136,
                                                      "end": 1150,
                                                      "type": "ArgumentListImpl",
                                                      "childEntities": [
                                                        {
                                                          "offset": 1137,
                                                          "end": 1149,
                                                          "type": "PrefixedIdentifierImpl",
                                                          "childEntities": [
                                                            {
                                                              "offset": 1137,
                                                              "end": 1143,
                                                              "type": "SimpleIdentifierImpl",
                                                              "token": "widget"
                                                            },
                                                            {
                                                              "offset": 1144,
                                                              "end": 1149,
                                                              "type": "SimpleIdentifierImpl",
                                                              "token": "title"
                                                            }
                                                          ]
                                                        }
                                                      ]
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "offset": 1167,
                                  "end": 1537,
                                  "type": "NamedExpressionImpl",
                                  "childEntities": [
                                    {
                                      "offset": 1167,
                                      "end": 1172,
                                      "type": "LabelImpl",
                                      "childEntities": [
                                        {
                                          "offset": 1167,
                                          "end": 1171,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "body"
                                        }
                                      ]
                                    },
                                    {
                                      "offset": 1173,
                                      "end": 1537,
                                      "type": "MethodInvocationImpl",
                                      "childEntities": [
                                        {
                                          "offset": 1173,
                                          "end": 1179,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "Center"
                                        },
                                        {
                                          "offset": 1179,
                                          "end": 1537,
                                          "type": "ArgumentListImpl",
                                          "childEntities": [
                                            {
                                              "offset": 1189,
                                              "end": 1528,
                                              "type": "NamedExpressionImpl",
                                              "childEntities": [
                                                {
                                                  "offset": 1189,
                                                  "end": 1195,
                                                  "type": "LabelImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 1189,
                                                      "end": 1194,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "child"
                                                    }
                                                  ]
                                                },
                                                {
                                                  "offset": 1196,
                                                  "end": 1528,
                                                  "type": "MethodInvocationImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 1196,
                                                      "end": 1202,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "Column"
                                                    },
                                                    {
                                                      "offset": 1202,
                                                      "end": 1528,
                                                      "type": "ArgumentListImpl",
                                                      "childEntities": [
                                                        {
                                                          "offset": 1214,
                                                          "end": 1257,
                                                          "type": "NamedExpressionImpl",
                                                          "childEntities": [
                                                            {
                                                              "offset": 1214,
                                                              "end": 1232,
                                                              "type": "LabelImpl",
                                                              "childEntities": [
                                                                {
                                                                  "offset": 1214,
                                                                  "end": 1231,
                                                                  "type": "SimpleIdentifierImpl",
                                                                  "token": "mainAxisAlignment"
                                                                }
                                                              ]
                                                            },
                                                            {
                                                              "offset": 1233,
                                                              "end": 1257,
                                                              "type": "PrefixedIdentifierImpl",
                                                              "childEntities": [
                                                                {
                                                                  "offset": 1233,
                                                                  "end": 1250,
                                                                  "type": "SimpleIdentifierImpl",
                                                                  "token": "MainAxisAlignment"
                                                                },
                                                                {
                                                                  "offset": 1251,
                                                                  "end": 1257,
                                                                  "type": "SimpleIdentifierImpl",
                                                                  "token": "center"
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        },
                                                        {
                                                          "offset": 1269,
                                                          "end": 1517,
                                                          "type": "NamedExpressionImpl",
                                                          "childEntities": [
                                                            {
                                                              "offset": 1269,
                                                              "end": 1278,
                                                              "type": "LabelImpl",
                                                              "childEntities": [
                                                                {
                                                                  "offset": 1269,
                                                                  "end": 1277,
                                                                  "type": "SimpleIdentifierImpl",
                                                                  "token": "children"
                                                                }
                                                              ]
                                                            },
                                                            {
                                                              "offset": 1279,
                                                              "end": 1517,
                                                              "type": "ListLiteralImpl",
                                                              "childEntities": [
                                                                {
                                                                  "offset": 1293,
                                                                  "end": 1379,
                                                                  "type": "InstanceCreationExpressionImpl",
                                                                  "childEntities": [
                                                                    {
                                                                      "offset": 1299,
                                                                      "end": 1303,
                                                                      "type": "ConstructorNameImpl",
                                                                      "childEntities": [
                                                                        {
                                                                          "offset": 1299,
                                                                          "end": 1303,
                                                                          "type": "NamedTypeImpl",
                                                                          "childEntities": [
                                                                            {
                                                                              "offset": 1299,
                                                                              "end": 1303,
                                                                              "type": "SimpleIdentifierImpl",
                                                                              "token": "Text"
                                                                            }
                                                                          ]
                                                                        }
                                                                      ]
                                                                    },
                                                                    {
                                                                      "offset": 1303,
                                                                      "end": 1379,
                                                                      "type": "ArgumentListImpl",
                                                                      "childEntities": [
                                                                        {
                                                                          "offset": 1319,
                                                                          "end": 1364,
                                                                          "type": "SimpleStringLiteralImpl",
                                                                          "value": "You have pushed the button this many times:"
                                                                        }
                                                                      ]
                                                                    }
                                                                  ]
                                                                },
                                                                {
                                                                  "offset": 1393,
                                                                  "end": 1504,
                                                                  "type": "MethodInvocationImpl",
                                                                  "childEntities": [
                                                                    {
                                                                      "offset": 1393,
                                                                      "end": 1397,
                                                                      "type": "SimpleIdentifierImpl",
                                                                      "token": "Text"
                                                                    },
                                                                    {
                                                                      "offset": 1397,
                                                                      "end": 1504,
                                                                      "type": "ArgumentListImpl",
                                                                      "childEntities": [
                                                                        {
                                                                          "offset": 1413,
                                                                          "end": 1424,
                                                                          "type": "StringInterpolationImpl",
                                                                          "childEntities": [
                                                                            {
                                                                              "offset": 1413,
                                                                              "end": 1414,
                                                                              "type": "InterpolationStringImpl"
                                                                            },
                                                                            {
                                                                              "offset": 1414,
                                                                              "end": 1423,
                                                                              "type": "InterpolationExpressionImpl",
                                                                              "childEntities": [
                                                                                {
                                                                                  "offset": 1415,
                                                                                  "end": 1423,
                                                                                  "type": "SimpleIdentifierImpl",
                                                                                  "token": "_counter"
                                                                                }
                                                                              ]
                                                                            },
                                                                            {
                                                                              "offset": 1423,
                                                                              "end": 1424,
                                                                              "type": "InterpolationStringImpl"
                                                                            }
                                                                          ],
                                                                          "value": null
                                                                        },
                                                                        {
                                                                          "offset": 1440,
                                                                          "end": 1489,
                                                                          "type": "NamedExpressionImpl",
                                                                          "childEntities": [
                                                                            {
                                                                              "offset": 1440,
                                                                              "end": 1446,
                                                                              "type": "LabelImpl",
                                                                              "childEntities": [
                                                                                {
                                                                                  "offset": 1440,
                                                                                  "end": 1445,
                                                                                  "type": "SimpleIdentifierImpl",
                                                                                  "token": "style"
                                                                                }
                                                                              ]
                                                                            },
                                                                            {
                                                                              "offset": 1447,
                                                                              "end": 1489,
                                                                              "type": "PropertyAccessImpl",
                                                                              "childEntities": [
                                                                                {
                                                                                  "offset": 1447,
                                                                                  "end": 1474,
                                                                                  "type": "PropertyAccessImpl",
                                                                                  "childEntities": [
                                                                                    {
                                                                                      "offset": 1447,
                                                                                      "end": 1464,
                                                                                      "type": "MethodInvocationImpl",
                                                                                      "childEntities": [
                                                                                        {
                                                                                          "offset": 1447,
                                                                                          "end": 1452,
                                                                                          "type": "SimpleIdentifierImpl",
                                                                                          "token": "Theme"
                                                                                        },
                                                                                        {
                                                                                          "offset": 1453,
                                                                                          "end": 1455,
                                                                                          "type": "SimpleIdentifierImpl",
                                                                                          "token": "of"
                                                                                        },
                                                                                        {
                                                                                          "offset": 1455,
                                                                                          "end": 1464,
                                                                                          "type": "ArgumentListImpl",
                                                                                          "childEntities": [
                                                                                            {
                                                                                              "offset": 1456,
                                                                                              "end": 1463,
                                                                                              "type": "SimpleIdentifierImpl",
                                                                                              "token": "context"
                                                                                            }
                                                                                          ]
                                                                                        }
                                                                                      ]
                                                                                    },
                                                                                    {
                                                                                      "offset": 1465,
                                                                                      "end": 1474,
                                                                                      "type": "SimpleIdentifierImpl",
                                                                                      "token": "textTheme"
                                                                                    }
                                                                                  ]
                                                                                },
                                                                                {
                                                                                  "offset": 1475,
                                                                                  "end": 1489,
                                                                                  "type": "SimpleIdentifierImpl",
                                                                                  "token": "headlineMedium"
                                                                                }
                                                                              ]
                                                                            }
                                                                          ]
                                                                        }
                                                                      ]
                                                                    }
                                                                  ]
                                                                }
                                                              ]
                                                            }
                                                          ]
                                                        }
                                                      ]
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "offset": 1545,
                                  "end": 1702,
                                  "type": "NamedExpressionImpl",
                                  "childEntities": [
                                    {
                                      "offset": 1545,
                                      "end": 1566,
                                      "type": "LabelImpl",
                                      "childEntities": [
                                        {
                                          "offset": 1545,
                                          "end": 1565,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "floatingActionButton"
                                        }
                                      ]
                                    },
                                    {
                                      "offset": 1567,
                                      "end": 1702,
                                      "type": "MethodInvocationImpl",
                                      "childEntities": [
                                        {
                                          "offset": 1567,
                                          "end": 1587,
                                          "type": "SimpleIdentifierImpl",
                                          "token": "FloatingActionButton"
                                        },
                                        {
                                          "offset": 1587,
                                          "end": 1702,
                                          "type": "ArgumentListImpl",
                                          "childEntities": [
                                            {
                                              "offset": 1597,
                                              "end": 1625,
                                              "type": "NamedExpressionImpl",
                                              "childEntities": [
                                                {
                                                  "offset": 1597,
                                                  "end": 1607,
                                                  "type": "LabelImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 1597,
                                                      "end": 1606,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "onPressed"
                                                    }
                                                  ]
                                                },
                                                {
                                                  "offset": 1608,
                                                  "end": 1625,
                                                  "type": "SimpleIdentifierImpl",
                                                  "token": "_incrementCounter"
                                                }
                                              ]
                                            },
                                            {
                                              "offset": 1635,
                                              "end": 1655,
                                              "type": "NamedExpressionImpl",
                                              "childEntities": [
                                                {
                                                  "offset": 1635,
                                                  "end": 1643,
                                                  "type": "LabelImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 1635,
                                                      "end": 1642,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "tooltip"
                                                    }
                                                  ]
                                                },
                                                {
                                                  "offset": 1644,
                                                  "end": 1655,
                                                  "type": "SimpleStringLiteralImpl",
                                                  "value": "Increment"
                                                }
                                              ]
                                            },
                                            {
                                              "offset": 1665,
                                              "end": 1693,
                                              "type": "NamedExpressionImpl",
                                              "childEntities": [
                                                {
                                                  "offset": 1665,
                                                  "end": 1671,
                                                  "type": "LabelImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 1665,
                                                      "end": 1670,
                                                      "type": "SimpleIdentifierImpl",
                                                      "token": "child"
                                                    }
                                                  ]
                                                },
                                                {
                                                  "offset": 1672,
                                                  "end": 1693,
                                                  "type": "InstanceCreationExpressionImpl",
                                                  "childEntities": [
                                                    {
                                                      "offset": 1678,
                                                      "end": 1682,
                                                      "type": "ConstructorNameImpl",
                                                      "childEntities": [
                                                        {
                                                          "offset": 1678,
                                                          "end": 1682,
                                                          "type": "NamedTypeImpl",
                                                          "childEntities": [
                                                            {
                                                              "offset": 1678,
                                                              "end": 1682,
                                                              "type": "SimpleIdentifierImpl",
                                                              "token": "Icon"
                                                            }
                                                          ]
                                                        }
                                                      ]
                                                    },
                                                    {
                                                      "offset": 1682,
                                                      "end": 1693,
                                                      "type": "ArgumentListImpl",
                                                      "childEntities": [
                                                        {
                                                          "offset": 1683,
                                                          "end": 1692,
                                                          "type": "PrefixedIdentifierImpl",
                                                          "childEntities": [
                                                            {
                                                              "offset": 1683,
                                                              "end": 1688,
                                                              "type": "SimpleIdentifierImpl",
                                                              "token": "Icons"
                                                            },
                                                            {
                                                              "offset": 1689,
                                                              "end": 1692,
                                                              "type": "SimpleIdentifierImpl",
                                                              "token": "add"
                                                            }
                                                          ]
                                                        }
                                                      ]
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  ],
  "end": 1717,
  "offset": 0,
  "type": "CompilationUnitImpl"
}
```
