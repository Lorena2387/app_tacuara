import 'dart:ffi';

import 'package:app_tacuara/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Carrusel extends StatelessWidget {
  const Carrusel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppTheme.primary, actions: []),
      body: Column(
        children: [
          Container(
            height: 220,
            margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/cabana1.jpg'))),
          ),
          const SizedBox(height: 30),
          Title(
              color: AppTheme.primary,
              child: const Text(
                'Tipos de cabañas',
                style: TextStyle(
                    color: AppTheme.primary,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    fontSize: 20),
              ))
        ],
      ),
    );
  }
}
