import 'package:flutter_test/flutter_test.dart';
import 'package:windenergy/features/data/models/models.dart';

void main() {
  group("test de conversion pour [UtilisateurModel]", () {
    test("devrait convertir un JSON en objet [UtilisateurModel]", () {
      final expected = UtilisateurModel(
        id: "0",
        email: "test@test.com",
        nom: "nom util",
        prenom: "prenom util",
      );

      final actual = UtilisateurModel.fromJSON({
        "id": "0",
        "email": "test@test.com",
        "nom": "nom util",
        "prenom": "prenom util",
      });

      expect(actual.id, expected.id);
      expect(actual.email, expected.email);
      expect(actual.nom, expected.nom);
      expect(actual.prenom, expected.prenom);
    });

    test("devrait convertir un [Map<String,Object>] en JSON", () {
      final expected = {
        "id": "0",
        "email": "test@test.com",
        "nom": "nom util",
        "prenom": "prenom util",
      };

      final utilsateur = UtilisateurModel(
        id: "0",
        email: "test@test.com",
        nom: "nom util",
        prenom: "prenom util",
      );

      final actual = utilsateur.toJSON();

      expect(actual, expected);
    });
  });

  group("test de conversion pour [EolienneModel]", () {
    test("devrait convertir un JSON en objet [EolienneModel]", () {
      final expected = EolienneModel(
        idUtilisateur: "0",
        actif: true,
        hashSecurite: "0",
        numeroSerie: "0",
        orientation: 12,
        puissanceGenere: 100,
        tempsDerniereMesure: DateTime(1970),
        vitesseRotation: 10,
      );

      final actual = EolienneModel.fromJSON({
        "utilisateur_id": "0",
        "actif": true,
        "hash_securite": "0",
        "numero_serie": "0",
        "orientation": 12.0,
        "puissance_genere": 100.0,
        "temps_derniere_mesure": DateTime(1970).toIso8601String(),
        "vitesse_rotation": 10.0,
      });

      expect(actual.idUtilisateur, expected.idUtilisateur);
      expect(actual.actif, expected.actif);
      expect(actual.hashSecurite, expected.hashSecurite);
      expect(actual.numeroSerie, expected.numeroSerie);
      expect(actual.orientation, expected.orientation);
      expect(actual.puissanceGenere, expected.puissanceGenere);
      expect(actual.tempsDerniereMesure, expected.tempsDerniereMesure);
      expect(actual.vitesseRotation, expected.vitesseRotation);
    });

    test("devrait convertir un [Map<String,Object>] en JSON", () {
      final expected = {
        "utilisateur_id": "0",
        "actif": true,
        "hash_securite": "0",
        "numero_serie": "0",
        "orientation": 12.0,
        "puissance_genere": 100.0,
        "temps_derniere_mesure": DateTime(1970).toIso8601String(),
        "vitesse_rotation": 10.0,
      };

      final eolienne = EolienneModel(
        idUtilisateur: "0",
        actif: true,
        hashSecurite: "0",
        numeroSerie: "0",
        orientation: 12,
        puissanceGenere: 100,
        tempsDerniereMesure: DateTime(1970),
        vitesseRotation: 10,
      );

      final actual = eolienne.toJSON();

      expect(actual, expected);
    });
  });
}
