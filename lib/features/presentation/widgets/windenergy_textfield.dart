import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:windenergy/ui/couleurs.dart';

class WindenergyTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Icon? prefixIcon;
  final bool obscureText;
  final bool enabled;
  TextEditingController? controller;

  WindenergyTextField({
    super.key,
    this.hintText = "",
    this.labelText = "",
    this.prefixIcon,
    this.controller,
    this.obscureText = false,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        filled: true,
        fillColor: enabled ? couleurFondSecondaire : Colors.grey[300],
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: couleurSecondaire),
        ),
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefixIcon,
        hintStyle: GoogleFonts.inter(color: couleurPrincipale, fontSize: 14),
      ),
    );
  }
}
