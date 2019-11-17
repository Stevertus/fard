import 'package:objd/core.dart';
// import all the files:
import './files/load.dart';
import './files/main.dart';
import 'files/server_version_check.dart';

class FardCore extends Widget {
  FardCore();

  @override
  Widget generate(Context context) {
    Comment.Author = "Stevertus";

    return Pack(
      name: 'fard',
      main: File(
        'main',
        header: Comment.FileHeader(
          "runs every tick",
          calledFrom: "#fard:tick",
        ),
        child: MainFile(),
      ),
      load: File(
        'load',
        header: Comment.FileHeader(
          "runs on load",
          calledFrom: "#fard:load",
        ),
        child: LoadFile(),
      ),
      modules: [],
      files: [
        File(
          "build/server_version_check",
          header: Comment.FileHeader(
            "checks the server version (e.g. 1.14) - increments, such as 1.14.1, aren't and can't be detected",
            calledFrom: "build/check",
          ),
          child: ServerCheckFile(),
        )
      ],
    );
  }
}
