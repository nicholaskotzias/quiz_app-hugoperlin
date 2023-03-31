import 'package:flutter/material.dart';

class BotaoAlternativa extends StatelessWidget {
  final String alternativa;

  BotaoAlternativa({
    super.key,
    required this.alternativa,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text(alternativa),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
