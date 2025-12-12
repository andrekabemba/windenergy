import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:windenergy/ui/couleurs.dart';

class WindenergyButton extends StatelessWidget {
  void Function()? onPressed;
  final String libelle;
  final bool outlineOnly;

  WindenergyButton({
    super.key,
    this.libelle = "",
    this.outlineOnly = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: outlineOnly ? Colors.white : couleurPrincipale,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: couleurPrincipale),
      ),
      child: Text(
        libelle,
        style: GoogleFonts.inter(
          color: outlineOnly ? couleurPrincipale : Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}
