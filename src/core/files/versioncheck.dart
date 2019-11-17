import 'package:objd/core.dart';
import '../../index.dart';

class CheckFile extends Widget {
  @override
  generate(Context context) {
    return For.of([
      VersionCheck(
        version,
        score: "data",
        // update
        onUpdate: [
          Tellraw(Entity.All(), show: [
            TextComponent.translate(
              "text.fard.update",
              color: Color.Aqua,
              hoverEvent: TextHoverEvent.text([
                TextComponent("Click to view the changelogs"),
              ]),
              clickEvent: TextClickEvent.open_url(
                "https://github.com/Stevertus/fard/releases",
              ),
            ),
          ])
        ],
        // downdate
        onDowndate: [
          Tellraw(
            Entity.All(),
            show: [
              TextComponent.translate(
                "text.fard.downdate",
                color: Color.Red,
                clickEvent: TextClickEvent.open_url(
                  "https://github.com/Stevertus/fard/releases/latest",
                ),
              ),
            ],
          ),
          Command('datapack disable "file/fard_data"'),
          Tellraw(
            Entity.All(),
            show: [
              TextComponent.translate(
                "text.fard.downdate.done",
                color: Color.Green,
              ),
            ],
          ),
        ],
        then: (Score s) => For.of([
          File.execute(
            "build/server_version_check",
            create: false,
          ),
        ]),
      ),
    ]);
  }
}
