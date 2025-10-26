import 'dart:io';
import 'package:flutter/material.dart';
import '../widget/filter_selector.dart';
import '../widget/filter_item.dart';
import '../widget/carousel_flowdelegate.dart';

class DisplayPictureScreen extends StatefulWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  State<DisplayPictureScreen> createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
  final _filters = [
    Colors.white,
    ...Colors.primaries,
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Hasil Foto')),
      body: Stack(
        children: [
          Positioned.fill(
            child: ValueListenableBuilder(
              valueListenable: _filterColor,
              builder: (context, color, child) {
                return Image.file(
                  File(widget.imagePath),
                  fit: BoxFit.cover,
                  color: color.withOpacity(0.5),
                  colorBlendMode: BlendMode.color,
                );
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: FilterSelector(
              onFilterChanged: _onFilterChanged,
              filters: _filters,
            ),
          ),
        ],
      ),
    );
  }
}
