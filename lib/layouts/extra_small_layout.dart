import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:boucherie_du_sud/pages/meat_page.dart';
import 'package:boucherie_du_sud/pages/faq_page.dart';
import 'package:boucherie_du_sud/pages/contact_page.dart';

/******************************/
// EXTRA SMALL DEVICE LAYOUTS //
////////////////////////////////
/// Iphone 8, SE

// Déclaration de ExtraSmallLayoutHome pour le Responsive //
class ExtraSmallLayoutHome extends StatelessWidget {
  const ExtraSmallLayoutHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fondAccueil.png"),
          fit: BoxFit.cover,
        ),
      ),
      // Contenu de la Page d'Accueil //
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Contenu Supérieur de la Page d'accueil //
          Positioned(
            top: 60,
            child: Image.asset(
              'assets/images/qualiteMeilleurPrix.png',
              scale: 1.3,
            ),
          ),
          Positioned(
            top: 180,
            child: Image.asset(
              'assets/images/logoBoucherieAccueil.png',
              scale: 1.5,
            ),
          ),
          Positioned(
            top: 260,
            child: Image.asset(
              'assets/images/sigleAccueil.png',
              scale: 1.4,
            ),
          ),
          const Positioned(
            top: 275,
            child: Text(
              "LILLE",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Valleron',
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          // Texte Central //
          const Positioned(
            bottom: 280,
            width: 220,
            child: Text(
              "BOUCHERIE DU SUD : QUALITÉ & SAVOIR-FAIRE, PRIX & SERVICES",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 3,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
          // Label Halal //
          Positioned(
            bottom: 180,
            child: Image.asset(
              'assets/images/imageLabelHalal.png',
              scale: 1.5,
            ),
          ),
          // Boutons de Bas de Page //
          Positioned(
            right: 10,
            bottom: -20,
            child: Container(
              margin: const EdgeInsets.all(50),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
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
                      icon: const Icon(Icons.food_bank, size: 40.0),
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
                      icon: const Icon(Icons.question_answer, size: 40.0),
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
                      icon: const Icon(Icons.contact_page, size: 40.0),
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
                      icon: Icon(Icons.shop, size: 40.0),
                      color: Colors.white,
                    ),
                    // Bouton Instagram //
                    IconButton(
                      onPressed: _launchUrlInstagram,
                      icon: Icon(Icons.photo, size: 40.0),
                      color: Colors.white,
                    ),
                    // Bouton Facebook //
                    IconButton(
                      onPressed: _launchUrlFacebook,
                      icon: Icon(Icons.facebook, size: 40.0),
                      color: Colors.white,
                    ),
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

// Déclaration de ExtraSmallLayoutMeat pour le Responsive //
class ExtraSmallLayoutMeat extends StatelessWidget {
  const ExtraSmallLayoutMeat({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fondAutresPages.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // En-Tête Page Viandes //
          const Positioned(
            top: 80,
            width: 280,
            child: Text(
              "NOS COLIS, PRATIQUES & PAS CHERS",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 34,
              ),
            ),
          ),
          Positioned(
            top: 165,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          const Positioned(
            top: 175,
            width: 120,
            child: Text(
              "Toutes nos viandes sont certifiées Halal",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'Valleron',
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
          // Contenu de la Page Viandes //
          Positioned(
            top: 220,
            child: Row(
              children: [
                // Colis Couscous //
                GestureDetector(
                  onTap: () {
                    _launchColis();
                  },
                  child: Image.asset(
                    'assets/images/colisCouscous.png',
                    scale: 1.4,
                  ),
                ),
                // Colis Standard
                GestureDetector(
                  onTap: () {
                    _launchColis();
                  },
                  child: Image.asset(
                    'assets/images/colisStandard.png',
                    scale: 1.4,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 360,
            child: Row(
              children: [
                // Colis Economique //
                GestureDetector(
                  onTap: () {
                    _launchColis();
                  },
                  child: Image.asset(
                    'assets/images/colisEconomique.png',
                    scale: 1.4,
                  ),
                ),
                // Colis Familial //
                GestureDetector(
                  onTap: () {
                    _launchColis();
                  },
                  child: Image.asset(
                    'assets/images/colisFamilial.png',
                    scale: 1.4,
                  ),
                ),
              ],
            ),
          ),
          // Colis Barbecue //
          Positioned(
            top: 508,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _launchColis();
                  },
                  child: Image.asset(
                    'assets/images/colisBarbecue.png',
                    scale: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Déclaration de ExtraSmallLayoutContact pour le Responsive //
class ExtraSmallLayoutContact extends StatelessWidget {
  const ExtraSmallLayoutContact({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fondAutresPages.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // En-Tête Page Contact //
          const Positioned(
            top: 90,
            width: 300,
            child: Text(
              "CONTACTEZ-NOUS",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 34,
              ),
            ),
          ),
          Positioned(
            top: 130,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          const Positioned(
            top: 140,
            width: 170,
            child: Text(
              "Vous avez des questions, n’hésitez pas à nous laisser un message.",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 3,
              style: TextStyle(
                fontFamily: 'Valleron',
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
          const Positioned(
            top: 165,
            width: 220,
            child: Text(
              "Nous vous répondrons dans les plus brefs délais.",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 3,
              style: TextStyle(
                fontFamily: 'Valleron',
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
          // Contenu de la Page Contact //
          Positioned(
            top: 190,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/images/facadeBoucherie.png',
                scale: 1.3,
              ),
            ),
          ),
          const Positioned(
            bottom: 270,
            width: 200,
            child: Text(
              "Notre succès ne serait rien sans notre clientèle qui apprécie nos mets et ne choisit que ce qui se fait de mieux.",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 3,
              style: TextStyle(
                fontFamily: 'Valleron',
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            bottom: 110,
            child: Image.asset(
              'assets/images/screenMaps.png',
              scale: 1.3,
            ),
          ),
          const Positioned(
            bottom: 60,
            width: 260,
            child: Text(
              "BOUCHERIE DU SUD est un établissement implanté dans un quartier de LILLE au 108 rue du Faubourg des Postes depuis des années.",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 4,
              style: TextStyle(
                fontFamily: 'Valleron',
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: ElevatedButton(
              onPressed: _launchUrlContactForm,
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 02),
              ),
              child: const Text(
                'Nous contacter',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Déclaration de ExtraSmallLayoutFaq pour le Responsive //
class ExtraSmallLayoutFaq extends StatelessWidget {
  const ExtraSmallLayoutFaq({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/fondAutresPages.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // En-Tête Page FAQ //
          const Positioned(
            top: 80,
            width: 300,
            child: Text(
              "FOIRE AUX QUESTIONS",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
            top: 110,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          const Positioned(
            top: 116,
            width: 170,
            child: Text(
              "Toutes les réponses aux questions que vous vous posez",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 3,
              style: TextStyle(
                fontFamily: 'Valleron',
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
          // Déclaration de la FAQ avec le Widget Accordion //
          Align(
            child: Accordion(
              rightIcon: const Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              flipRightIconIfOpen: true,
              paddingListTop: 30,
              maxOpenSections: 1,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Colors.grey,
              scaleWhenAnimating: true,
              openAndCloseAnimation: true,
              headerPadding:
                  const EdgeInsets.symmetric(vertical: 11, horizontal: 30),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              children: [
                // Première Question //
                AccordionSection(
                  isOpen: false,
                  header: const Text(
                    'Offrez-vous la livraison ?',
                  ),
                  content: Wrap(
                    children: const [
                      Text(
                        "La livraison est offerte à partir de 50€ d'achat.",
                      ),
                    ],
                  ),
                ),
                // Deuxième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Dans quelle zone livrez-vous ?'),
                  content: Wrap(
                    children: const [
                      Text(
                          'Nous livrons uniquement dans la métropole Lilloise et sa proche périphérie.'),
                    ],
                  ),
                ),
                // Troisième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Quand êtes-vous ouverts ?'),
                  content: Wrap(
                    children: const [
                      Text(
                          'Nous sommes ouverts 7 jours sur 7, de 09h à 19h30, sans interruption.'),
                    ],
                  ),
                ),
                // Quatrième question //
                AccordionSection(
                  isOpen: false,
                  header:
                      const Text('Vos viandes sont-elles labélisées Halal ?'),
                  content: Wrap(
                    children: const [
                      Text(
                          "Toutes nos viandes sont séléctionnées et certifiées Halal, selon l'abbatage rituel et les préceptes de l'Islam"),
                    ],
                  ),
                ),
                // Cinquième question //
                AccordionSection(
                  isOpen: false,
                  header:
                      const Text('Proposez-vous des services de traîteur ?'),
                  content: Wrap(
                    children: const [
                      Text(
                          'Oui, vous pouvez nous contacter pour de plus amples informations à ce sujet. Tous nos produits traîteur sont réalisés de façon artisanale.'),
                    ],
                  ),
                ),
                // Sixième question //
                AccordionSection(
                  isOpen: false,
                  header:
                      const Text('Utilisez-vous mes données personnelles ?'),
                  content: Wrap(
                    children: const [
                      Text(
                          "Notre site internet utilise des Cookies pour améliorer votre navigation, selon votre approbation ou non, mais notre application mobile n'en utilise pas."),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Image du bas de la Page FAQ //
          Positioned(
            bottom: 120,
            child: Image.asset('assets/images/iconBasFaq.png'),
          ),
          // Adresse Bas Page FAQ //
          const Positioned(
            bottom: 70,
            width: 180,
            child: Text(
              "108 Rue du Faubourg des Postes - 59000 Lille",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          // Numéro Bas Page FAQ //
          const Positioned(
            bottom: 30,
            width: 280,
            child: Text(
              "Tél : 09 82 44 05 26",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          // Adresse Mail Bas Page FAQ //
          const Positioned(
            bottom: 10,
            width: 280,
            child: Text(
              "boucherie.mo@gmail.com",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
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

// Déclaration de la Fonction Launch Colis //
final Uri _urlColis =
    Uri.parse('https://www.boucheriedusud.fr/les-colis?page=2');
_launchColis() async {
  if (!await launchUrl(_urlColis)) {
    throw 'Could not launch $_urlColis';
  }
}

// Déclaration de la Fonction Launch ContactForm //
final Uri _urlContactForm = Uri.parse('https://www.boucheriedusud.fr/contact');
_launchUrlContactForm() async {
  if (!await launchUrl(_urlContactForm)) {
    throw 'Could not launch $_urlContactForm';
  }
}
