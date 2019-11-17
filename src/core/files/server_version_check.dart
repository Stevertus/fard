import 'package:objd/core.dart';

class ServerCheckFile extends Widget {
  @override
  generate(Context context) {
    return For.of([
      ServerVersionCheck(minVersion: 15, versionTooLow: [
        Tellraw(
          Entity.All(),
          show: [
            TextComponent.translate(
              "text.launch.server_version.too_low",
              color: Color.Red,
            )
          ],
        ),
        Command('datapack disable "file/fard_data"'),
        Tellraw(
          Entity.All(),
          show: [
            TextComponent.translate(
              "text.launch.server_version.too_low.done",
              color: Color.Green,
            )
          ],
        ),
      ]),
    ]);
  }
}
