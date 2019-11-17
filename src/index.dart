import 'package:objd/core.dart';
import './core/core.dart';

int version = 0;

void main(List<String> args) {
  Tag.prefix = "fd_";
  Scoreboard.prefix = "fd_";

  createProject(
    Project(
      name: 'fard_data',
      target: "../",
      generate: FardCore(),
    ),
    args,
  );
}
