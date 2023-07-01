import 'package:flutter/material.dart';
import 'package:jogo_da_velha/controller/home_controller.dart';
import 'package:jogo_da_velha/widgets/container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181D27),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'JOGO DA VELHA',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: GridView.count(
                padding: const EdgeInsets.all(25),
                crossAxisCount: 3,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ContainerGame(
                    index: 0,
                    homeController: controller,
                    symbol: controller.symbol ? 'X' : 'O',
                  ),
                  ContainerGame(
                    index: 1,
                    homeController: controller,
                    symbol: controller.symbol ? 'X' : 'O',
                  ),
                  ContainerGame(
                    index: 2,
                    homeController: controller,
                    symbol: controller.symbol ? 'X' : 'O',
                  ),
                  ContainerGame(
                    index: 3,
                    homeController: controller,
                    symbol: controller.symbol ? 'X' : 'O',
                  ),
                  ContainerGame(
                    index: 4,
                    homeController: controller,
                    symbol: controller.symbol ? 'X' : 'O',
                  ),
                  ContainerGame(
                    index: 5,
                    homeController: controller,
                    symbol: controller.symbol ? 'X' : 'O',
                  ),
                  ContainerGame(
                    index: 6,
                    homeController: controller,
                    symbol: controller.symbol ? 'X' : 'O',
                  ),
                  ContainerGame(
                    index: 7,
                    homeController: controller,
                    symbol: controller.symbol ? 'X' : 'O',
                  ),
                  ContainerGame(
                    index: 8,
                    homeController: controller,
                    symbol: controller.symbol ? 'X' : 'O',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
