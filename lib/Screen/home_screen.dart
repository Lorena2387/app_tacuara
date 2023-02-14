import 'package:app_tacuara/Screen/Theme/app_theme.dart';
import 'package:app_tacuara/Screen/inicio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), (() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Inicio()));
    }));
  }

  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
                height: 130,
                image: AssetImage('assets/images/Logo_tacuara.png')),
            CircularProgressIndicator(
              color: AppTheme.primary,
            )
          ],
        ),
      ),
    );
  }
}
