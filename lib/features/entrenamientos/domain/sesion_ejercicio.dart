import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mi_primer_app/core/json.dart';
import 'package:mi_primer_app/features/entrenamientos/domain/estado_sesion.dart';
import 'package:mi_primer_app/features/entrenamientos/domain/serie.dart';

part 'sesion_ejercicio.freezed.dart';

/// Define una sesión de entrenamiento.
@Freezed(fromJson: false,toJson: false)
abstract class SesionEjercicio with _$SesionEjercicio {
  const factory SesionEjercicio({
    required String id,
    required String nombreEjercicio,
    required String musculoObjetivo,
    required Serie serieObjetivo,
    required DateTime creadoEn,
    required EstadoSesion estado,
    @Default(<String>[]) List<String> notas,
  }) = _SesionEjercicio;

  const SesionEjercicio._();

  factory SesionEjercicio.fromJson(Map<String, dynamic> json) => SesionEjercicio(
        id: leerTexto(json, 'id'),
        nombreEjercicio: leerTexto(json, 'nombreEjercicio'),
        musculoObjetivo: leerTexto(json, 'musculoObjetivo'),
        serieObjetivo: Serie.fromJson(leerMapa(json, 'serieObjetivo')),
        creadoEn: leerFecha(json, 'creadoEn'),
        estado: EstadoSesion.fromJson(leerMapa(json, 'estado')),
        notas: leerTextos(json, 'notas'),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombreEjercicio': nombreEjercicio,
        'musculoObjetivo': musculoObjetivo,
        'serieObjetivo': serieObjetivo.toJson(),
        'creadoEn': creadoEn.toUtc().toIso8601String(),
        'estado': estado.toJson(),
        'notas': notas,
      };

  // ── Reglas de negocio ───────────────────────────────────────────────────

  bool get tieneNotas => notas.isNotEmpty;

  bool get sePuedeEditar => estado.sePuedeEditar;

  Duration antiguedad(DateTime ahora) => ahora.difference(creadoEn);

  bool estaObsoleta(DateTime ahora) => antiguedad(ahora) > const Duration(days: 7);
}