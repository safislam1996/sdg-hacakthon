import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

class Player extends SpriteComponent with Hitbox,Collidable{
  Vector2 _moveDirection = Vector2.zero();
  double _speed = 20;

  Player(Sprite? sprite, Vector2? size, Vector2? position)
      : super(sprite: sprite, position: position, size: size);

  // final knobPaint = BasicPalette.blue.withAlpha(200).paint();
  // final backgroundPaint = BasicPalette.blue.withAlpha(100).paint();
  final JoystickComponent component = JoystickComponent(
    knob: CircleComponent(
        radius: 30, paint: BasicPalette.blue.withAlpha(200).paint()),
    background: CircleComponent(
        radius: 100, paint: BasicPalette.blue.withAlpha(100).paint()),
    margin: const EdgeInsets.only(left: 40, bottom: 40),
  );
  
  @override
  add(component);

  @override
  void update(double dt) {
    super.update(dt);

    this.position.add(component.relativeDelta * _speed * dt);
  }
}
