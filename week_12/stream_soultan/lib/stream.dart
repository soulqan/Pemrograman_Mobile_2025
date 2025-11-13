import 'package:flutter/material.dart';

class ColorStream {
    final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    //tambahan warna baru
    Colors.green,
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.orangeAccent,
    Colors.purpleAccent
  ];
  Stream<Color> getColorStream() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;
        return colors[index];
    });
  }
}