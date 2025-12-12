import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:windenergy/core/exceptions/exceptions.dart';
import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/data/datasources/datasources.dart';
import 'package:windenergy/features/data/repositories/eolienne_repository_impl.dart';

class DatabaseDatasourceMock extends Mock implements DatabaseDatasource {}

void main() {
  late EolienneRepositoryImpl repositoryImpl;
  late DatabaseDatasourceMock databaseDatasource;

  setUp(() {
    databaseDatasource = DatabaseDatasourceMock();
    repositoryImpl = EolienneRepositoryImpl(databaseDatasource);
  });

  group("test de [ajouterEolienne]", () {
    test("devrait retourner [Succes]", () async {
      final String numeroSerie = "";
      when(
        () => databaseDatasource.ajouterEolienne(numeroSerie),
      ).thenAnswer((_) async => Succes(true));

      final actual = await repositoryImpl.ajouterEolienne(numeroSerie);

      expect(actual, Succes(true));
    });
    test("devrait retourner un [Echec]", () async {
      final String numeroSerie = "";
      when(
        () => databaseDatasource.ajouterEolienne(numeroSerie),
      ).thenThrow(ServerException(message: ""));

      final actual = await repositoryImpl.ajouterEolienne(numeroSerie);

      expect(actual, Echec(message: ""));
    });
  });
}
