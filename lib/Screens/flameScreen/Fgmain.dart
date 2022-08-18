import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/image_composition.dart';
import 'package:flutter/material.dart' hide Image;
import 'package:flutter_games/constants/Constvars.dart';

class FlameGMainScreen extends StatefulWidget {
  const FlameGMainScreen({Key? key}) : super(key: key);

  @override
  State<FlameGMainScreen> createState() => _FlameGMainScreenState();
}

class _FlameGMainScreenState extends State<FlameGMainScreen> {
  late final MyGame _game;

  @override
  void initState() {
    super.initState();
    _game = MyGame();
  }

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: _game);
  }
}

class MyGame extends FlameGame {
  @override
  Future<void> render(Canvas canvas) async {}
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    Image playerImge =
        await Flame.images.load('${MainCharaterGImageDir}NinjaFrog/Run.png');

    SpriteComponent player = SpriteComponent.fromImage(
      playerImge,
      size: Vector2(32, 32),
      position: Vector2(100, 100),
    );
    await addAll([player, MyPlayer()]);
  }

  @override
  void update(double dt) {
    // TODO: implement update
  }
}

/// A component that renders the crate sprite, with a 16 x 16 size.
class MyPlayer extends SpriteComponent {
  MyPlayer() : super(size: Vector2.all(32));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('${MainCharaterGImageDir}NinjaFrog/Run.png');
  }
}
