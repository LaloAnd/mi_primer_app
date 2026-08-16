import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_test/flutter_test.dart';
import 'package:mi_primer_app/core/json.dart';
import 'package:mi_primer_app/features/entrenamientos/data/entrenamientos_locales.dart';

const _jsonEjemplo = '''
[
  {
    "id": "ses-001",
    "nombreEjercicio": "Press de banca plano",
    "musculoObjetivo": "Pecho",
    "serieObjetivo": {
      "repeticiones": 10,
      "pesoKg": 70.0,
      "tiempoDescansoSegundos": 90
    },
    "creadoEn": "2026-08-14T14:00:00.000Z",
    "estado": { 
      "tipo": "planificada", 
      "ordenEnRutina": 1 
    },
    "notas": ["Mantener codos alineados"]
  },
  {
    "id": "ses-002",
    "nombreEjercicio": "Sentadilla libre",
    "musculoObjetivo": "Piernas",
    "serieObjetivo": {
      "repeticiones": 8,
      "pesoKg": 100.0,
      "tiempoDescansoSegundos": 120
    },
    "creadoEn": "2026-08-14T15:00:00.000Z",
    "estado": {
      "tipo": "completada",
      "completadoEn": "2026-08-14T15:45:00.000Z",
      "esfuerzoPercibido": 8
    },
    "notas": []
  }
]
''';

void main() {
  group('EntrenamientosLocales', () {
    test('lee la lista completa del archivo mockeado', () async {
      final repo = EntrenamientosLocales(lector: (_) async => _jsonEjemplo);
      final lista = await repo.obtenerTodos();

      expect(lista.length, 2);
    });

    test('busca por id y devuelve null cuando no existe', () async {
      final repo = EntrenamientosLocales(lector: (_) async => _jsonEjemplo);

      final sesion = await repo.obtenerPorId('ses-001');
      expect(sesion?.nombreEjercicio, 'Press de banca plano');

      final inexistente = await repo.obtenerPorId('no-existe');
      expect(inexistente, isNull);
    });

    test('obtiene únicamente las sesiones pendientes de ejecución', () async {
      final repo = EntrenamientosLocales(lector: (_) async => _jsonEjemplo);
      final pendientes = await repo.obtenerPendientes();

      expect(pendientes.length, 1);
      expect(pendientes.first.id, 'ses-001');
    });

    test('un archivo que no es una lista en la raíz se rechaza con CampoInvalido', () async {
      final repo = EntrenamientosLocales(lector: (_) async => '{"id": "ses-001"}');

      expect(repo.obtenerTodos(), throwsA(isA<CampoInvalido>()));
    });

    test('el asset declarado en pubspec existe y el modelo lo decodifica correctamente', () async {
      TestWidgetsFlutterBinding.ensureInitialized();

      final repo = EntrenamientosLocales(lector: rootBundle.loadString);
      final sesiones = await repo.obtenerTodos();

      expect(sesiones.length, greaterThanOrEqualTo(3));
    });
  });
}