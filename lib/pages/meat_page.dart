import 'package:flutter/material.dart';
import 'package:boucherie_du_sud/layouts/extra_small_layout.dart';
import 'package:boucherie_du_sud/layouts/small_layout.dart';
import 'package:boucherie_du_sud/layouts/medium_layout.dart';
import 'package:boucherie_du_sud/layouts/large_layout.dart';

/******************/
// PARTIE VIANDES //
////////////////////

class MeatPage extends StatelessWidget {
  const MeatPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Design de la page d'Accueil //
      extendBodyBehindAppBar: true,
      // AppBar de la Page d'Accueil //
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0),
        elevation: 0,
      ),
      body: LayoutBuilder(builder: (_, constraints) {
        if (constraints.maxHeight > 850) {
          return const LargeLayoutMeat();
        } else if (constraints.maxHeight > 800) {
          return const MediumLayoutMeat();
        } else if (constraints.maxHeight > 700) {
          return const SmallLayoutMeat();
        } else {
          return const ExtraSmallLayoutMeat();
        }
      }),
    );
  }
}
