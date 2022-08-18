import 'package:flutter/material.dart';
import 'package:boucherie_du_sud/pages/home_page.dart';
import 'package:flutter/services.dart';

// Lancement de l'application //
void main() {
  // Désactivation du mode Paysage //
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

// Root de l'Application //
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Boucherie du Sud',
      home: HomePage(),
    );
  }
}
