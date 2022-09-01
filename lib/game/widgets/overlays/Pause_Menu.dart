import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pollution_collector/game/game.dart';

import '../Pause_Button.dart';

class PauseMenu extends StatelessWidget {
  static const String id = 'PauseMenu';
  final RoadScapeGame gameRef;
  const PauseMenu({super.key, required this.gameRef});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              'Paused',
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: ElevatedButton(
                onPressed: () {
                  gameRef.overlays.remove(PauseMenu.id);
                  gameRef.overlays.add(PauseButton.id);
                  gameRef.resumeEngine();
                },
                child: const Text('Restart')),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: ElevatedButton(
                onPressed: () {
                  gameRef.overlays.remove(PauseMenu.id);
                  gameRef.reset();
                  gameRef.resumeEngine();
                },
                child: const Text('Exit')),
          ),
        ],
      ),
    );
  }
}
