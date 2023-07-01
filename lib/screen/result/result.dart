import 'package:flutter/material.dart';
import 'package:jogo_da_velha/widgets/empate.dart';
import 'package:jogo_da_velha/widgets/vitoria.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  late Map data;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    data = ModalRoute.of(context)!.settings.arguments as Map;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181D27),
      appBar: AppBar(
        title: const Text('RESULTADO DO JOGO'),
        backgroundColor: const Color(0xff181D27),
        elevation: 0,
        centerTitle: true,
      ),
      body: data['jogador'] != 'EMPATE'
          ? Vitoria(jogador: data['jogador'])
          : Empate(jogador: data['jogador']),
    );
  }
}
