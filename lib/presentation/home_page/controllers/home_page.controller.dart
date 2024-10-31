import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../res/datas.dart';

class HomePageController extends GetxController {


  TextStyle categoryTitleTextStyle = const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w800 );
  Color scaffoldBackgroundColor = Colors.white;
  Color appBarColor = Colors.white;
  Color colorCategory = Colors.blue;

  late AnimationController animationController;

  int categorySelectedIndex = 0;

  List<Map> categories = [
    {
      "titulo": "Populares",
      "lista": [football2024, amongUsRect, hitman3],
      'color' : Colors.deepPurpleAccent,
      'icon' : Icons.home_filled,
    },
    {
      "titulo": "Nuevos",
      "lista": [daysGone, ciberPunk2071, farCry6],
      'color' : Colors.amber,
      'icon' : Icons.new_releases_sharp,
    },
    {
      "titulo": "Acción",
      "lista": [farCry6, ciberPunk2071, gta5],
      'color' : Colors.indigo,
      'icon' : Icons.videogame_asset,
    },
    {
      "titulo": "Carrera",
      "lista": [rocketLeague, nfspayback, dirt5],
      'color' : Colors.teal,
      'icon': Icons.local_car_wash,
    },
    {
      "titulo": "Estrategia",
      "lista": [ageOfEmpires3, amongUs, ciberPunk2071],
      'color' : Colors.purple,
      'icon' : Icons.view_module,
    },
    {
      "titulo": "Aventura",
      "lista": [farCry6, redDeadOnline, gta5],
      'color' : Colors.lightGreen,
      'icon' : Icons.terrain,
    },
    {
      "titulo": "Terror",
      "lista": [redDeadOnline, residentEvil6, daysGone],
      'color' : Colors.indigo,
      'icon' : Icons.transfer_within_a_station,
    },
    {
      "titulo": "MultiJugador",
      "lista": [amongUs, redDeadOnline, rocketLeague],
      'color' : Colors.red,
      'icon' : Icons.people,
    },
  ];



  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  RxInt count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
