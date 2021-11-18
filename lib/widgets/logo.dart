import 'package:flutter/material.dart';
import 'package:flutter_memory_game/theme.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Image.asset('images/host.png', width: 80, height: 125),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: RichText(
            text: TextSpan(
              text: 'Round 6 ',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 30),
              children: const [
                TextSpan(
                  text: 'Memory',
                  style: TextStyle(color: Round6Theme.color),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
