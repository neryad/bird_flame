import 'dart:async';

import 'package:bird_flame/game/assest.dart';
import 'package:bird_flame/game/fluty_bird_game.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';

class Background extends SpriteComponent with HasGameRef<FlutyBirdGame> {
  Background();

  @override
  Future<void> onLoad() async {
    final background = await Flame.images.load(Assets.backgorund);

    size = gameRef.size;
    sprite = Sprite(background);
  }
}
