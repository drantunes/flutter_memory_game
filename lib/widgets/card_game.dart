import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_memory_game/constants.dart';
import 'package:flutter_memory_game/theme.dart';

class CardGame extends StatefulWidget {
  final Modo modo;
  final int opcao;

  const CardGame({
    Key? key,
    required this.modo,
    required this.opcao,
  }) : super(key: key);

  @override
  State<CardGame> createState() => _CardGameState();
}

class _CardGameState extends State<CardGame> with SingleTickerProviderStateMixin {
  late final AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  AssetImage getImage(double angulo) {
    if (angulo > 0.5 * pi) {
      return AssetImage('images/${widget.opcao.toString()}.png');
    } else {
      return widget.modo == Modo.normal
          ? const AssetImage('images/card_normal.png')
          : const AssetImage('images/card_round.png');
    }
  }

  flipCard() {
    if (!animation.isAnimating) {
      animation.forward();
      Timer(const Duration(seconds: 2), () => animation.reverse());
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, _) {
        final angulo = animation.value * pi;
        final transform = Matrix4.identity()
          ..setEntry(3, 2, 0.002)
          ..rotateY(angulo);

        return GestureDetector(
          onTap: () => flipCard(),
          child: Transform(
            transform: transform,
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: widget.modo == Modo.normal ? Colors.white : Round6Theme.color,
                  width: 2,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: getImage(angulo),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
