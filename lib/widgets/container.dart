import 'package:flutter/material.dart';
import 'package:jogo_da_velha/controller/container_controller.dart';
import 'package:jogo_da_velha/controller/home_controller.dart';

class ContainerGame extends StatefulWidget {
  final HomeController homeController;
  final String symbol;
  final int index;

  const ContainerGame({
    super.key,
    required this.homeController,
    required this.symbol,
    required this.index,
  });

  @override
  State<ContainerGame> createState() => _ContainerGameState();
}

class _ContainerGameState extends State<ContainerGame> {
  ContainerController containerController = ContainerController();

  @override
  void initState() {
    super.initState();
    containerController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!containerController.haveText) {
          widget.homeController.add(widget.index, widget.symbol);
        }

        if (widget.homeController.result) {
          widget.homeController.result = false;
          Navigator.of(context).pushNamed(
            '/result',
            arguments: {
              "jogador": widget.homeController.jogador,
            },
          );
        }

        if (widget.homeController.empate) {
          widget.homeController.empate = false;
          Navigator.of(context).pushNamed(
            '/result',
            arguments: {
              "jogador": widget.homeController.jogador,
            },
          );
        }
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            widget.homeController.list[widget.index],
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: widget.homeController.list[widget.index] == 'X'
                  ? Colors.redAccent
                  : Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }
}
