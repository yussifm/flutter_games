import 'package:flutter/material.dart';
import 'package:flutter_games/Screens/flameScreen/Fgmain.dart';
import 'package:flutter_games/constants/Constvars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Games plugins Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
      home: const MyHomePage(title: 'Flutter Games plugins Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const Text(
              'Choose Engine',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FlameGMainScreen()),
                );
              
              },
              child: const Text("FlameEngine"),

            ),

              ElevatedButton(
              onPressed: (){},
              child: const Text("BonFireEngine"),
            ),
              ElevatedButton(
              onPressed: (){},
              child: const Text("RayLib"),
            ),
          const Image(image: AssetImage("assets/images/Background/Blue.png")),
            Image.asset("${BgImageDir}Pink.png"),
            Image.asset("${ItemImageDir}Box1/Idle.png"),
            Image.asset('${MainCharaterImageDir}NinjaFrog/Hit.png'),
           
          ],
        ),
      ),
    );
  }
}


