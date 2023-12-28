import 'package:bird_flame/game/fluty_bird_game.dart';
import 'package:bird_flame/screens/game_over_screen.dart';
import 'package:bird_flame/screens/main_screen.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  final game = FlutyBirdGame();
  runApp(GameWidget(
    game: game,
    initialActiveOverlays: const [MainMenuScreen.id],
    overlayBuilderMap: {
      'mainMenu': (context, _) => MainMenuScreen(game: game),
      'gameOver': (context, _) => GameOverScreen(game: game)
    },
  ));
}
