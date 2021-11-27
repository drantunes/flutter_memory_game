import 'package:flutter/material.dart';
import 'package:flutter_memory_game/controllers/game_controller.dart';
import 'package:flutter_memory_game/pages/home_page.dart';
import 'package:flutter_memory_game/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<GameController>(create: (_) => GameController()),
    ],
    child: const App(),
  ));
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Round 6 Memory',
      debugShowCheckedModeBanner: false,
      theme: Round6Theme.theme,
      home: const HomePage(),
    );
  }
}
