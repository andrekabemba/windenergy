import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:windenergy/features/presentation/widgets/logo.dart';
import 'package:windenergy/features/presentation/widgets/windenergy_button.dart';
import 'package:windenergy/features/presentation/widgets/windenergy_textfield.dart';
import 'package:windenergy/ui/couleurs.dart';

class AuthentificationPage extends StatelessWidget {
  const AuthentificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        padding: EdgeInsets.all(20),
        color: couleurFond,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Logo(),
            SizedBox(height: 50),
            WindenergyTextField(
              prefixIcon: Icon(Icons.email, color: couleurPrincipale),
              hintText: "Veuillez entrer votre Email",
              labelText: "Email",
            ),
            SizedBox(height: 20),
            WindenergyTextField(
              prefixIcon: Icon(Icons.lock, color: couleurPrincipale),
              hintText: "Veuillez entrer votre mot de passe",
              labelText: "Mot de Passe",
              obscureText: true,
            ),
            SizedBox(height: 30),
            WindenergyButton(libelle: "s'authentifier", onPressed: () {}),
            SizedBox(height: 20),
            Text(
              "Pas encore enregistré?",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(color: couleurPrincipale, fontSize: 14),
            ),
            SizedBox(height: 20),
            WindenergyButton(libelle: "s'enregistrer", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
