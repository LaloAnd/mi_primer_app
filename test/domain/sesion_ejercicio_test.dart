import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mi_primer_app/core/json.dart';
import 'package:mi_primer_app/features/entrenamientos/domain/estado_sesion.dart';
import 'package:mi_primer_app/features/entrenamientos/domain/serie.dart';
import 'package:mi_primer_app/features/entrenamientos/domain/sesion_ejercicio.dart';

/// Fabrica de sesiones de prueba para reutilizar en los tests.
SesionEjercicio ejemplo({EstadoSesion? estado, List<String>? notas}) => SesionEjercicio(
      id: 'ses-001',
      nombreEjercicio: 'Press de banca plano',
      musculoObjetivo: 'Pecho',
      serieObjetivo: const Serie(
        repeticiones: 10,
        pesoKg: 70.0,
        tiempoDescansoSegundos: 90,
      ),
      creadoEn: DateTime.utc(2026, 8, 14, 14, 0),
      estado: estado ?? const Planificada(1),
      notas: notas ?? const <String>[],
    );

void main() {
  group('serialización', () {
    test('una sesión sobrevive la ida y vuelta a JSON sin perder nada', () {
      final original = ejemplo(
        estado: Completada(
          DateTime.utc(2026, 8, 14, 14, 45),
          8,
        ),
        notas: const ['Mantener codos a 45 grados'],
      );

      // Pasa por String -> JSON -> Objeto para validar todo el flujo
      final texto = jsonEncode(original.toJson());
      final vuelta = SesionEjercicio.fromJson(jsonDecode(texto) as Map<String, dynamic>);

      expect(vuelta, equals(original));
    });

    test('una sesión sin la clave notas se lee con la lista vacía', () {
      final json = ejemplo().toJson()..remove('notas');
      expect(SesionEjercicio.fromJson(json).notas, isEmpty);
    });

    test('una sesión sin nombreEjercicio dice QUÉ campo falló, no solo que falló', () {
      final json = ejemplo().toJson()..remove('nombreEjercicio');

      expect(
        () => SesionEjercicio.fromJson(json),
        throwsA(
          isA<CampoInvalido>().having((e) => e.campo, 'campo', 'nombreEjercicio'),
        ),
      );
    });

    test('una fecha que no es ISO 8601 se rechaza con CampoInvalido', () {
      final json = ejemplo().toJson()..['creadoEn'] = '14 de agosto de 2026';
      expect(() => SesionEjercicio.fromJson(json), throwsA(isA<CampoInvalido>()));
    });

    test('la fecha de creación se conserva en UTC y termina en Z', () {
      final json = ejemplo().toJson();
      expect(json['creadoEn'], '2026-08-14T14:00:00.000Z');
    });
  });

  group('igualdad y copia', () {
    test('dos sesiones con los mismos datos son iguales', () {
      expect(ejemplo(), equals(ejemplo()));
    });

    test('dos sesiones con los mismos datos comparten hashCode y funcionan en Set', () {
      expect(ejemplo().hashCode, equals(ejemplo().hashCode));
      expect({ejemplo(), ejemplo()}.length, 1);
    });

    test('dos sesiones con notas distintas NO son iguales', () {
      expect(
        ejemplo(notas: const ['Nota A']),
        isNot(equals(ejemplo(notas: const ['Nota B']))),
      );
    });

    test('copyWith cambia solo lo que se le pasa conservando la identidad id y creadoEn', () {
      final original = ejemplo();
      final copia = original.copyWith(nombreEjercicio: 'Sentadilla libre');

      expect(copia.nombreEjercicio, 'Sentadilla libre');
      expect(copia.id, original.id);
      expect(copia.creadoEn, original.creadoEn);
    });
  });

  group('reglas de negocio', () {
    test('una sesión completada no se puede editar', () {
      final sesionCompletada = ejemplo(
        estado: Completada(DateTime.utc(2026, 8, 14, 14, 45), 9),
      );
      expect(sesionCompletada.sePuedeEditar, isFalse);
    });

    test('una sesión planificada sí se puede editar', () {
      expect(ejemplo(estado: const Planificada(1)).sePuedeEditar, isTrue);
    });

    test('una sesión creada hace más de 7 días está obsoleta', () {
      final ahora = DateTime.utc(2026, 8, 25);
      expect(ejemplo().estaObsoleta(ahora), isTrue);
    });

    test('la etiqueta de una sesión completada incluye el nivel de esfuerzo', () {
      final estado = Completada(DateTime.utc(2026, 8, 14, 14, 45), 8);
      expect(estado.etiqueta, contains('8/10'));
    });
  });
}