import 'package:flutter_test/flutter_test.dart';
import 'package:windenergy/features/data/models/models.dart';

void main() {
  group("test de conversion pour [UtilisateurModel]", () {
    test("devrait convertir un JSON en objet [UtilisateurModel]", () {
      final expected = UtilisateurModel(
        authId: "0",
        email: "test@test.com",
        idUtilisateur: 1,
        nom: "nom util",
        prenom: "prenom util",
      );

      final actual = UtilisateurModel.fromJSON({
        "authId": "0",
        "email": "test@test.com",
        "idUtilisateur": 1,
        "nom": "nom util",
        "prenom": "prenom util",
      });

      expect(actual.authId, expected.authId);
      expect(actual.idUtilisateur, expected.idUtilisateur);
      expect(actual.email, expected.email);
      expect(actual.nom, expected.nom);
      expect(actual.prenom, expected.prenom);
    });

    test("devrait convertir un [Map<String,Object>] en JSON", () {
      final expected = {
        "authId": "0",
        "email": "test@test.com",
        "idUtilisateur": 1,
        "nom": "nom util",
        "prenom": "prenom util",
      };

      final utilsateur = UtilisateurModel(
        authId: "0",
        email: "test@test.com",
        idUtilisateur: 1,
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
        idUtilisateur: 0,
        actif: true,
        hashSecurite: "0",
        numeroSerie: "0",
        orientation: 12,
        puissanceGenere: 100,
        tempsDerniereMesure: DateTime.fromMillisecondsSinceEpoch(0),
        vitesseRotation: 10,
      );

      final actual = EolienneModel.fromJSON({
        "idUtilisateur": 0,
        "actif": true,
        "hashSecurite": "0",
        "numeroSerie": "0",
        "orientation": 12.0,
        "puissanceGenere": 100.0,
        "tempsDerniereMesure": 0,
        "vitesseRotation": 10.0,
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
        "idUtilisateur": 0,
        "actif": true,
        "hashSecurite": "0",
        "numeroSerie": "0",
        "orientation": 12.0,
        "puissanceGenere": 100.0,
        "tempsDerniereMesure": 0,
        "vitesseRotation": 10.0,
      };

      final eolienne = EolienneModel(
        idUtilisateur: 0,
        actif: true,
        hashSecurite: "0",
        numeroSerie: "0",
        orientation: 12,
        puissanceGenere: 100,
        tempsDerniereMesure: DateTime.fromMillisecondsSinceEpoch(0),
        vitesseRotation: 10,
      );

      final actual = eolienne.toJSON();

      expect(actual, expected);
    });
  });
}
