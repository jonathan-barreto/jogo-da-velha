import 'package:flutter/material.dart';

class Vitoria extends StatelessWidget {
  final String jogador;

  const Vitoria({
    super.key,
    required this.jogador,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RichText(
          text: TextSpan(
            text: 'O JOGADOR',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: ' $jogador ',
                style: TextStyle(
                  color: jogador == 'X' ? Colors.redAccent : Colors.lightBlue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(
                text: 'GANHOU!!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Image.asset('assets/clap.png'),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Colors.white,
            ),
            fixedSize: MaterialStatePropertyAll(
              Size(250, 60),
            ),
          ),
          child: const Text(
            'VOLTAR',
            style: TextStyle(
              color: Color(0xff181D27),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
