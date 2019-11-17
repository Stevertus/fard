import 'package:objd/core.dart';

import 'versioncheck.dart';

class LoadFile extends Widget {
  /// The load file is put in a seperate widget to split the code in several files
  LoadFile();

  @override
  Widget generate(Context context) {
    var t = [
      {
        "translate": "%1\$s",
        "with": [
          {
            "text": "[FARD] You do not have the resource pack enabled!",
            "color": "red"
          },
          [
            {"translate": "pack.fard.prefix", "color": "aqua"},
            {"translate": "pack.fard.name", "color": "dark_aqua"},
            ": ",
            {"translate": "pack.fard.loaded", "color": "dark_aqua"}
          ]
        ]
      }
    ];

    return For.of([
      // put your load widgets here
      Tellraw(
        Entity.All(),
        show: [
          TextComponent.translate(
            "%1\$s",
            conversionFlags: [
              TextComponent(
                "[FARD] You do not have the resource pack enabled!",
                color: Color.Red,
              ),
              [
                TextComponent.translate(
                  "pack.fard.prefix",
                  color: Color.Aqua,
                ),
                TextComponent.translate(
                  "pack.fard.name",
                  color: Color.DarkAqua,
                ),
                TextComponent(
                  ": ",
                ),
                TextComponent.translate(
                  "pack.fard.loaded",
                  color: Color.DarkAqua,
                ),
              ]
            ],
          ),
        ],
      ),
      File.execute(
        "build/check",
        header: Comment.FileHeader(
          "checks the version and compares it to see if there is an update or a downdate",
          calledFrom: "fard/load",
        ),
        child: CheckFile(),
      ),

      Timer(
        "clock16",
        children: [],
        ticks: 16,
      )
    ]);
  }
}
