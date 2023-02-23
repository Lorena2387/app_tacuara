import 'package:app_tacuara/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Alojamiento extends StatefulWidget {
  const Alojamiento({super.key});

  @override
  State<Alojamiento> createState() => _AlojamientoState();
}

class _AlojamientoState extends State<Alojamiento> {
  List<String> images = [
    'assets/images/cabana1.jpg',
    'assets/images/cabana2.jpg',
    'assets/images/cabana3.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: AppTheme.primary, actions: []),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 250.0,
                child: Swiper(
                  itemCount: 3,
                  viewportFraction: 0.8,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                  scale: 0.9,
                  pagination: const SwiperPagination(),
                  control: const SwiperControl(color: AppTheme.primary),
                ),
              )
            ],
          )),
        ));
  }
}
