import 'package:app_tacuara/Screen/Theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Alojamiento extends StatefulWidget {
  const Alojamiento({super.key});

  @override
  State<Alojamiento> createState() => _AlojamientoState();
}

class _AlojamientoState extends State<Alojamiento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppTheme.primary, actions: []),
    );
  }
}