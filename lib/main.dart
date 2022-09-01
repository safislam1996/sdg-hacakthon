import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/material.dart';
import 'package:pollution_collector/game/game.dart';

void main() {
  runApp(GameWidget(game: RoadScapeGame()));
}

// class MyGame extends FlameGame {
//   
//   SpriteComponent car1 = SpriteComponent();
//   SpriteComponent car3 = SpriteComponent();
//   @override
//   Future<void> onLoad() async {
//     super.onLoad();
//     print('Load images');

  
//     truck
//       ..sprite = await loadSprite('trashmaster.png')
//       ..size = Vector2(100, 200)
//       ..y = 300
//       ..x = 150
//       ..anchor = Anchor.center;
//     add(truck);
//     car1
//       ..sprite = await loadSprite('car-1.png')
//       ..size = Vector2(60, 70)
//       ..y = 400;
//     add(car1);
//     car3
//       ..sprite = await loadSprite('car-truck5.png')
//       ..size = Vector2(60, 100)
//       ..y = 100;
//     add(car3);
//   }

//   @override
//   void update(double dt) {
//     super.update(dt);
//     // car1.y -= 20 * dt;
//   }
// }
