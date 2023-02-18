import 'package:app_tacuara/models/models.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Alojamiento extends StatefulWidget {
  const Alojamiento({super.key});

  @override
  State<Alojamiento> createState() => _AlojamientoState();
}

class _AlojamientoState extends State<Alojamiento> {
  List images = [
    'assets/images/cabana1.jpg',
    'assets/images/cabana2.jpg',
    'assets/images/cabana3.jpg'
  ];
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppTheme.primary, actions: []),
      body: SingleChildScrollView(
          child: Column(
        children: const [],
      )),
    );
  }
}
