import 'package:windenergy/features/domain/entities/entities.dart';

class UtilisateurModel extends Utilisateur {
  const UtilisateurModel({super.id, super.email, super.nom, super.prenom});

  UtilisateurModel.fromJSON(Map<String, dynamic> json)
    : super(
        id: json["id"]! as String,
        email: json["email"]! as String,
        nom: json["nom"]! as String,
        prenom: json["prenom"]! as String,
      );

  Map<String, dynamic> toJSON() {
    var ret = <String, dynamic>{};
    ret["id"] = id;
    ret["email"] = email;
    ret["nom"] = nom;
    ret["prenom"] = prenom;
    return ret;
  }
}

class EolienneModel extends Eolienne {
  EolienneModel({
    super.idUtilisateur,
    super.actif,
    super.hashSecurite,
    super.numeroSerie,
    super.orientation,
    super.puissanceGenere,
    super.tempsDerniereMesure,
    super.vitesseRotation,
  });

  EolienneModel.fromJSON(Map<String, dynamic> json)
    : super(
        idUtilisateur: json["utilisateur_id"]! as String,
        actif: json["actif"]! as bool,
        hashSecurite: json["hash_securite"]! as String,
        numeroSerie: json["numero_serie"]! as String,
        orientation: json["orientation"]! as double,
        puissanceGenere: json["puissance_genere"]! as double,
        tempsDerniereMesure: DateTime.parse(
          json["temps_derniere_mesure"]! as String,
        ),
        vitesseRotation: json["vitesse_rotation"]! as double,
      );

  Map<String, dynamic> toJSON() {
    var nouveauTemps = DateTime(1970).toIso8601String();
    if (tempsDerniereMesure != null) {
      nouveauTemps = tempsDerniereMesure!.toIso8601String();
    }

    return <String, dynamic>{
      "utilisateur_id": idUtilisateur,
      "actif": actif,
      "hash_securite": hashSecurite,
      "numero_serie": numeroSerie,
      "orientation": orientation,
      "puissance_genere": puissanceGenere,
      "temps_derniere_mesure": nouveauTemps,
      "vitesse_rotation": vitesseRotation,
    };
  }
}
