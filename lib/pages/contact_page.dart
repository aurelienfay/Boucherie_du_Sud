import 'package:flutter/material.dart';
import 'package:boucherie_du_sud/layouts/extra_small_layout.dart';
import 'package:boucherie_du_sud/layouts/small_layout.dart';
import 'package:boucherie_du_sud/layouts/medium_layout.dart';
import 'package:boucherie_du_sud/layouts/large_layout.dart';

/******************/
// PARTIE CONTACT //
////////////////////

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Design de la page Contact //
      extendBodyBehindAppBar: true,
      // AppBar de la Page Contact //
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0),
        elevation: 0,
      ),
      body: LayoutBuilder(builder: (_, constraints) {
        if (constraints.maxHeight > 850) {
          return const LargeLayoutContact();
        } else if (constraints.maxHeight > 800) {
          return const MediumLayoutContact();
        } else if (constraints.maxHeight > 700) {
          return const SmallLayoutContact();
        } else {
          return const ExtraSmallLayoutContact();
        }
      }),
    );
  }
}
