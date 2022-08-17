
import 'package:flame/game.dart';
import 'package:flutter/material.dart';


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
    return GameWidget(game:_game);
  }
}

class MyGame extends Game {
  @override
  void render(Canvas canvas) {
    // TODO: implement render
  }

  @override
  void update(double dt) {
    // TODO: implement update
  }
}