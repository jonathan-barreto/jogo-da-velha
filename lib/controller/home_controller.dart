import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  bool symbol = true;
  bool result = false;
  String? jogador;
  int count = 0;
  bool empate = false;

  List list = ['', '', '', '', '', '', '', '', ''];

  void add(int index, String symbol) {
    list[index] = symbol;
    print(list);
    notifyListeners();
    checkResults();

    count++;
    if (count == 9) return empateGame();
  }

  void checkResults() {
    symbol = !symbol;
    verificarLinhas();
    verificarColunas();
    verificaDiagonais();
    notifyListeners();
  }

  void verificarLinhas() {
    if (list[0] != '' && list[0] == list[1] && list[1] == list[2]) {
      ganhou(list[0]);
    }
    if (list[3] != '' && list[3] == list[4] && list[4] == list[5]) {
      ganhou(list[3]);
    }
    if (list[6] != '' && list[6] == list[7] && list[7] == list[8]) {
      ganhou(list[6]);
    }
  }

  void verificarColunas() {
    if (list[0] != '' && list[0] == list[3] && list[3] == list[6]) {
      ganhou(list[0]);
    }
    if (list[1] != '' && list[1] == list[4] && list[4] == list[7]) {
      ganhou(list[1]);
    }
    if (list[2] != '' && list[2] == list[5] && list[5] == list[8]) {
      ganhou(list[2]);
    }
  }

  void verificaDiagonais() {
    if (list[0] != '' && list[0] == list[4] && list[4] == list[8]) {
      ganhou(list[0]);
    }
    if (list[2] != '' && list[2] == list[4] && list[4] == list[6]) {
      ganhou(list[2]);
    }
  }

  void ganhou(String jogadorVencedor) {
    list = ['', '', '', '', '', '', '', '', ''];
    symbol = true;
    result = true;
    count = 0;
    jogador = jogadorVencedor;
    notifyListeners();
  }

  void empateGame() {
    list = ['', '', '', '', '', '', '', '', ''];
    symbol = true;
    empate = true;
    count = 0;
    jogador = 'EMPATE';
    notifyListeners();
  }
}
