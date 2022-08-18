import 'package:flutter/material.dart';
import 'package:boucherie_du_sud/layouts/extra_small_layout.dart';
import 'package:boucherie_du_sud/layouts/small_layout.dart';
import 'package:boucherie_du_sud/layouts/medium_layout.dart';
import 'package:boucherie_du_sud/layouts/large_layout.dart';

/******************/
//// PARTIE FAQ ////
////////////////////

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Design de la page FAQ //
      extendBodyBehindAppBar: true,
      // AppBar de la Page FAQ //
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0),
        elevation: 0,
      ),
      body: LayoutBuilder(builder: (_, constraints) {
        if (constraints.maxHeight > 850) {
          return const LargeLayoutFaq();
        } else if (constraints.maxHeight > 800) {
          return const MediumLayoutFaq();
        } else if (constraints.maxHeight > 700) {
          return const SmallLayoutFaq();
        } else {
          return const ExtraSmallLayoutFaq();
        }
      }),
    );
  }
}

/* // Déclaration de LargeDeviceFaq pour le Responsive
class LargeDeviceFaq extends StatelessWidget {
  const LargeDeviceFaq({super.key});
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
        // decoration:
        // const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/fondAutresPages.png"),
        //     fit: BoxFit.cover,
        //   ),
        // );
        alignment: Alignment.center,
        children: [
          // En-Tête Page de Contact //
          const Positioned(
            top: 140,
            width: 300,
            child: Text(
              "FOIRE AUX QUESTIONS",
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
            top: 185,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          const Positioned(
            top: 200,
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
            top: 226,
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
          // Déclaration de la FAQ avec le Widget Accordion //
          Align(
            child: Accordion(
              rightIcon: const Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              flipRightIconIfOpen: true,
              paddingListTop: 50,
              maxOpenSections: 1,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Colors.grey,
              scaleWhenAnimating: true,
              openAndCloseAnimation: true,
              headerPadding:
                  const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              children: [
                // Première Question //
                AccordionSection(
                  isOpen: false,
                  header: const Text(
                    'Première question',
                  ),
                  content: Wrap(
                    children: const [
                      Text(
                        'Test',
                      ),
                    ],
                  ),
                ),
                // Deuxième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Deuxième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Troisième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Troisième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Quatrième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Quatrième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Cinquième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Cinquième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Sixième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Sixième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Image du bas de la Page FAQ //
          Positioned(
            bottom: 196,
            child: Image.asset('assets/images/iconBasFaq.png'),
          ),
          // Adresse Bas Page FAQ //
          const Positioned(
            bottom: 120,
            width: 280,
            child: Text(
              "108 Rue du Faubourg des Postes - 59000 Lille",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 26,
              ),
            ),
          ),
          Positioned(
            bottom: 105,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          // Numéro Bas Page FAQ //
          const Positioned(
            bottom: 60,
            width: 280,
            child: Text(
              "Tél : 09 82 44 05 26",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
          // Adresse Mail Bas Page FAQ //
          const Positioned(
            bottom: 30,
            width: 280,
            child: Text(
              "boucherie.mo@gmail.com",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Déclaration de MediumDeviceFaq pour le Responsive
class MediumDeviceFaq extends StatelessWidget {
  const MediumDeviceFaq({super.key});
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
          // En-Tête Page de Contact //
          const Positioned(
            top: 130,
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
            top: 175,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          const Positioned(
            top: 193,
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
            top: 219,
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
          // Déclaration de la FAQ avec le Widget Accordion //
          Align(
            child: Accordion(
              rightIcon: const Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              flipRightIconIfOpen: true,
              paddingListTop: 50,
              maxOpenSections: 1,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Colors.grey,
              scaleWhenAnimating: true,
              openAndCloseAnimation: true,
              headerPadding:
                  const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              children: [
                // Première Question //
                AccordionSection(
                  isOpen: false,
                  header: const Text(
                    'Première question',
                  ),
                  content: Wrap(
                    children: const [
                      Text(
                        'Test',
                      ),
                    ],
                  ),
                ),
                // Deuxième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Deuxième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Troisième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Troisième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Quatrième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Quatrième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Cinquième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Cinquième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Sixième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Sixième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Image du bas de la Page FAQ //
          Positioned(
            bottom: 180,
            child: Image.asset('assets/images/iconBasFaq.png'),
          ),
          // Adresse Bas Page FAQ //
          const Positioned(
            bottom: 110,
            width: 260,
            child: Text(
              "108 Rue du Faubourg des Postes - 59000 Lille",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          // Numéro Bas Page FAQ //
          const Positioned(
            bottom: 60,
            width: 280,
            child: Text(
              "Tél : 09 82 44 05 26",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 26,
              ),
            ),
          ),
          // Adresse Mail Bas Page FAQ //
          const Positioned(
            bottom: 30,
            width: 280,
            child: Text(
              "boucherie.mo@gmail.com",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Déclaration de SmallMediumDeviceFaq pour le Responsive
class SmallMediumDeviceFaq extends StatelessWidget {
  const SmallMediumDeviceFaq({super.key});
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
        // decoration:
        // const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/fondAutresPages.png"),
        //     fit: BoxFit.cover,
        //   ),
        // );
        alignment: Alignment.center,
        children: [
          // En-Tête Page de Contact //
          const Positioned(
            top: 110,
            width: 300,
            child: Text(
              "FOIRE AUX QUESTIONS",
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
            top: 155,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          const Positioned(
            top: 170,
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
            top: 226,
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
          // Déclaration de la FAQ avec le Widget Accordion //
          Align(
            child: Accordion(
              rightIcon: const Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              flipRightIconIfOpen: true,
              paddingListTop: 40,
              maxOpenSections: 1,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Colors.grey,
              scaleWhenAnimating: true,
              openAndCloseAnimation: true,
              headerPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              children: [
                // Première Question //
                AccordionSection(
                  isOpen: false,
                  header: const Text(
                    'Première question',
                  ),
                  content: Wrap(
                    children: const [
                      Text(
                        'Test',
                      ),
                    ],
                  ),
                ),
                // Deuxième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Deuxième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Troisième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Troisième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Quatrième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Quatrième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Cinquième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Cinquième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Sixième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Sixième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Image du bas de la Page FAQ //
          Positioned(
            bottom: 150,
            child: Image.asset('assets/images/iconBasFaq.png'),
          ),
          // Adresse Bas Page FAQ //
          const Positioned(
            bottom: 90,
            width: 260,
            child: Text(
              "108 Rue du Faubourg des Postes - 59000 Lille",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          // Numéro Bas Page FAQ //
          const Positioned(
            bottom: 40,
            width: 280,
            child: Text(
              "Tél : 09 82 44 05 26",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          // Adresse Mail Bas Page FAQ //
          const Positioned(
            bottom: 15,
            width: 280,
            child: Text(
              "boucherie.mo@gmail.com",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Déclaration de SmallDeviceFaq pour le Responsive
class SmallDeviceFaq extends StatelessWidget {
  const SmallDeviceFaq({super.key});
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
        // decoration:
        // const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/fondAutresPages.png"),
        //     fit: BoxFit.cover,
        //   ),
        // );
        alignment: Alignment.center,
        children: [
          // En-Tête Page de Contact //
          const Positioned(
            top: 60,
            width: 300,
            child: Text(
              "FOIRE AUX QUESTIONS",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Akhand Bold',
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          const Positioned(
            top: 110,
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
            top: 135,
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
          // Déclaration de la FAQ avec le Widget Accordion //
          Align(
            child: Accordion(
              rightIcon: const Icon(Icons.keyboard_arrow_down,
                  color: Colors.black, size: 20),
              flipRightIconIfOpen: true,
              paddingListTop: 35,
              maxOpenSections: 1,
              headerBackgroundColor: Colors.white,
              headerBackgroundColorOpened: Colors.grey,
              scaleWhenAnimating: true,
              openAndCloseAnimation: true,
              headerPadding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
              sectionClosingHapticFeedback: SectionHapticFeedback.light,
              children: [
                // Première Question //
                AccordionSection(
                  isOpen: false,
                  header: const Text(
                    'Première question',
                  ),
                  content: Wrap(
                    children: const [
                      Text(
                        'Test',
                      ),
                    ],
                  ),
                ),
                // Deuxième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Deuxième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Troisième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Troisième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Quatrième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Quatrième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Cinquième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Cinquième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
                // Sixième question //
                AccordionSection(
                  isOpen: false,
                  header: const Text('Sixième question'),
                  content: Wrap(
                    children: const [
                      Text('Lorem Ipsum'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Image du bas de la Page FAQ //
          Positioned(
            bottom: 110,
            child: Image.asset('assets/images/iconBasFaq.png'),
          ),
          // Adresse Bas Page FAQ //
          const Positioned(
            bottom: 64,
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
            bottom: 54,
            child: Image.asset('assets/images/separatorLine.png'),
          ),
          // Numéro Bas Page FAQ //
          const Positioned(
            bottom: 28,
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
 */