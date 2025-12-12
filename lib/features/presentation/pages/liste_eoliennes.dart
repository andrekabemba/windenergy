import 'package:flutter/material.dart';
import 'package:windenergy/features/domain/entities/entities.dart';
import 'package:windenergy/features/presentation/widgets/eolienne_miniature.dart';
import 'package:windenergy/features/presentation/widgets/logo_small.dart';
import 'package:windenergy/ui/couleurs.dart';

class ListeEoliennesPage extends StatelessWidget {
  const ListeEoliennesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: LogoSmall(),
        backgroundColor: couleurFond,
      ),
      body: Container(
        color: couleurFond,
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(),
        child: Wrap(
          alignment: WrapAlignment.start,
          spacing: 20,
          runSpacing: 20,
          children: [
            EolienneMiniature(eolienne: Eolienne(numeroSerie: "ABAC")),
            EolienneMiniature(
              eolienne: Eolienne(numeroSerie: "ABAC", actif: false),
            ),
            EolienneMiniature(eolienne: Eolienne(numeroSerie: "ABAC")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: couleurPrincipale,
        onPressed: () {},
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
