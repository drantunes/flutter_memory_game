import 'package:flutter/material.dart';
import 'package:flutter_memory_game/constants.dart';
import 'package:flutter_memory_game/pages/game_page.dart';
import 'package:flutter_memory_game/theme.dart';

class CardNivel extends StatelessWidget {
  final Modo modo;
  final int nivel;

  const CardNivel({
    Key? key,
    required this.modo,
    required this.nivel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          fullscreenDialog: true,
          builder: (BuildContext context) => GamePage(modo: modo, nivel: nivel),
        ),
      ),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: 90,
        height: 90,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
            color: modo == Modo.normal ? Colors.white : Round6Theme.color,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: modo == Modo.normal ? Colors.transparent : Round6Theme.color.withOpacity(.6),
        ),
        child: Center(
          child: Text(nivel.toString(), style: const TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
