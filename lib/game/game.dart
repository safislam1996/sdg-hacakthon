import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/cupertino.dart';

class RoadScapeGame extends FlameGame with HasDraggables,HasCollisionDetection{
  SpriteComponent truck = SpriteComponent();
  late final JoystickComponent joystick;
  double _speed = 20;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    ParallaxComponent bg = await ParallaxComponent.load([
      ParallaxImageData('background.png'),
      ParallaxImageData('background - 2.png')
    ],
        size: size,
        fill: LayerFill.height,
        repeat: ImageRepeat.repeatY,
        baseVelocity: Vector2(0, -50));
    add(bg);
    truck
      ..sprite = await loadSprite('trashmaster.png')
      ..size = Vector2(100, 200)
      // ..y = 300
      // ..x = 150
      ..position = canvasSize / 2
      ..anchor = Anchor.center;
    add(truck);

    joystick = JoystickComponent(
      knob: CircleComponent(
          radius: 30, paint: BasicPalette.blue.withAlpha(200).paint()),
      background: CircleComponent(
          radius: 100, paint: BasicPalette.blue.withAlpha(100).paint()),
      margin: const EdgeInsets.only(left: 40, bottom: 40),
    );

    add(joystick);
  }

  @override
  void update(double dt) {
    super.update(dt);

    truck.position.add(joystick.relativeDelta * 200 * dt);
  }
}
