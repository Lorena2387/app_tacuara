import 'package:app_tacuara/Screen/Theme/app_theme.dart';
import 'package:app_tacuara/Screen/cabanas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Stack(fit: StackFit.expand, children: [
          Image.asset(
            'assets/images/inicio.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(8, 400, 8, 250),
            decoration: const BoxDecoration(
                color: AppTheme.primary,
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            child: const Text(
              'Estamos ubicados en la vereda San Gerardo(Garzón-Huila), vía pavimentada a 5 minutos, detrás de la bahía comercial Tacuara Droguería Famamiga',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppTheme.secundary,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  fontSize: 20),
            ),
          ),
          Container(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Alojamiento()));
                },
                elevation: 10,
                minWidth: 300,
                height: 30,
                color: AppTheme.primary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2)),
                child: const Text(
                  'Iniciar',
                  style: TextStyle(
                      color: AppTheme.secundary,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      fontSize: 20),
                ),
              ))
        ]));
  }
}
