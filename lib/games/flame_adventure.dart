import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';

import '../levels.dart';

class FlameAdventure extends FlameGame {
  late final CameraComponent cam;
  final worldLevel = Level();

  @override
  Color backgroundColor() => const Color(0xFF211F30);

  @override
  FutureOr<void> onLoad() async {
    cam = CameraComponent.withFixedResolution(
      world: worldLevel,
      width: 640,
      height: 360,
    );
    cam.viewfinder.anchor = Anchor.topLeft;

    addAll([cam, worldLevel]);

    return super.onLoad();
  }
}
