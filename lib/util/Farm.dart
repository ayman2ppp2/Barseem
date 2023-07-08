import 'package:barseem/util/Barseem_Cube.dart';
import 'package:flutter/material.dart';

class Farm extends ChangeNotifier {
  List<BarseemCube> cubes = [];
  var numberOfCubes;
  Farm({var this.numberOfCubes});
  void addCubes(var number) {
    for (var i = 0; i < number; i++) {
      cubes.add(
        BarseemCube(
            buyingDate: '', currentBuyer: '', price: 0, wateringDate: ''),
      );
    }
    // notifyListeners();
  }

  List<BarseemCube> get thecubes {
    return cubes;
  }

  void setCubeBuyer(var cubeBuyer, var index) {
    cubes[index].currentBuyer = cubeBuyer;
    notifyListeners();
  }

  void setWaterDate({required var date, required var index}) {
    cubes[index].wateringDate = date;
    notifyListeners();
  }

  void setPrice({required var price, required var index}) {
    cubes[index].price = price;
    notifyListeners();
  }

  void setBuyDate({required var date, required var index}) {
    cubes[index].buyingDate = date;
    notifyListeners();
  }

  List<BarseemCube> get availableCubes {
    List<BarseemCube> temp = [];
    for (var cube in cubes) {
      if (cube.currentBuyer == '') {
        temp.add(cube);
      }
    }
    return temp;
  }

  double get expectedRevnue {
    double temp = 0;
    for (var cube in cubes) {
      if (cube.price != 0) {
        temp += cube.price;
      }
    }
    return temp;
  }

  void sellAcube({required String name, required double price}) {
    for (var cube in cubes) {
      if (cube.currentBuyer == '') {
        cube.currentBuyer = name;
        cube.price = price;
        cube.buyingDate = DateTime.now().toString();
        cube.wateringDate = DateTime.now().toString();
      }
    }
  }
}
