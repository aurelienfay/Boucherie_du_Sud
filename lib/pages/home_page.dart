import 'package:flutter/material.dart';
import 'package:boucherie_du_sud/layouts/extra_small_layout.dart';
import 'package:boucherie_du_sud/layouts/small_layout.dart';
import 'package:boucherie_du_sud/layouts/medium_layout.dart';
import 'package:boucherie_du_sud/layouts/large_layout.dart';

/******************/
// PARTIE ACCUEIL //
////////////////////

// Page d'Accueil //
class HomePage extends StatelessWidget {
  const HomePage({super.key});
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
          return const LargeLayoutHome();
        } else if (constraints.maxHeight > 800) {
          return const MediumLayoutHome();
        } else if (constraints.maxHeight > 700) {
          return const SmallLayoutHome();
        } else {
          return const ExtraSmallLayoutHome();
        }
      }),
    );
  }
}

/* // Page d'accueil //
/* class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // On étend le contenu à tout le Portable //
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container du haut //
            Container(
              // Design du Container Supérieur //
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/fondAccueil.png"),
                    fit: BoxFit.cover),
              ),
              // Contenu du Container Supérieur //
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    width: 200,
                    bottom: -30,
                    child: Text(
                      "BOUCHERIE DU SUD : QUALITÉ & SAVOIR-FAIRE, PRIX & SERVICES",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: TextStyle(
                        fontFamily: 'DayRoman',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Container du Bas //
          ],
        ),
      ),
      // Déclaration de l'AppBar //
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.star,
              color: Colors.white,
            ),
            onPressed: null,
          )
        ],
      ),
    );
  }
} */

// Boutons Bas de Page d'Accueil //
class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Wrap(
          spacing: 60,
          children: [
            // Bouton Viandes //
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MeatPage(),
                  ),
                );
              },
              icon: const Icon(Icons.food_bank, size: 50.0),
              color: Colors.white,
            ),
            // Bouton FAQ //
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FaqPage(),
                  ),
                );
              },
              icon: const Icon(Icons.question_answer, size: 50.0),
              color: Colors.white,
            ),
            // Bouton Page de contact //
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactPage(),
                  ),
                );
              },
              icon: const Icon(Icons.contact_page, size: 50.0),
              color: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: 30),
        Wrap(
          spacing: 60,
          children: const [
            // Bouton Boutique //
            IconButton(
              onPressed: _launchUrl,
              icon: Icon(Icons.shop, size: 50.0),
              color: Colors.white,
            ),
            // Bouton Instagram //
            IconButton(
              onPressed: _launchUrlInstagram,
              icon: Icon(Icons.photo, size: 50.0),
              color: Colors.white,
            ),
            // Bouton Facebook //
            IconButton(
              onPressed: _launchUrlFacebook,
              icon: Icon(Icons.facebook, size: 50.0),
              color: Colors.white,
            ),
          ],
        )
      ]),
    );
  }
}

// Déclaration de la Fonction Launch Boutique //
final Uri _url = Uri.parse('https://www.boucheriedusud.fr/');
_launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

// Déclaration de la Fonction Launch Instagram //
final Uri _urlInstagram =
    Uri.parse('https://www.instagram.com/boucheriedusud.lille/');
_launchUrlInstagram() async {
  if (!await launchUrl(_urlInstagram)) {
    throw 'Could not launch $_urlInstagram';
  }
}

// Déclaration de la Fonction Launch Facebook //
final Uri _urlFacebook = Uri.parse(
    'https://www.facebook.com/Boucherie-du-Sud-Lille-111557561297539/');
_launchUrlFacebook() async {
  if (!await launchUrl(_urlFacebook)) {
    throw 'Could not launch $_urlFacebook';
  }
}
 */