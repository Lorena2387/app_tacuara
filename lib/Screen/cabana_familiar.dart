import 'package:app_tacuara/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CabanaFamiliar extends StatefulWidget {
  const CabanaFamiliar({super.key});

  @override
  State<CabanaFamiliar> createState() => _CabanaFamiliarState();
}

class _CabanaFamiliarState extends State<CabanaFamiliar> {
  List<String> images = [
    'assets/images/cabanafam1.png',
    'assets/images/cabanafam2.png',
    'assets/images/cabanafam3.png',
    'assets/images/cabanafam4.png'
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: AppTheme.primary,
          actions: [],
        ),
      ],
    ));
  }
}
