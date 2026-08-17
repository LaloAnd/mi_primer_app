import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mi_primer_app/core/json.dart';

part 'estado_sesion.freezed.dart';

/// Representa el punto exacto en el ciclo de vida de una sesión de entrenamiento.
@Freezed(fromJson: false, toJson: false)
sealed class EstadoSesion with _$EstadoSesion {
  const factory EstadoSesion.planificada(int ordenEnRutina) = Planificada;
  const factory EstadoSesion.enProgreso(DateTime iniciadoEn) = EnProgreso;
  const factory EstadoSesion.completada(
    DateTime completadoEn,
    int esfuerzoPercibido,
  ) = Completada;

  const EstadoSesion._();

  factory EstadoSesion.fromJson(Map<String, dynamic> json) {
    final tipo = leerTexto(json, 'tipo');
    return switch (tipo) {
      'planificada' => Planificada(leerEntero(json, 'ordenEnRutina')),
      'en_progreso' => EnProgreso(leerFecha(json, 'iniciadoEn')),
      'completada' => Completada(
          leerFecha(json, 'completadoEn'),
          leerEntero(json, 'esfuerzoPercibido'),
        ),
      _ => throw CampoInvalido('estado.tipo', 'no es un estado conocido', tipo),
    };
  }

  Map<String, dynamic> toJson() => switch (this) {
        Planificada(:final ordenEnRutina) => {
            'tipo': 'planificada',
            'ordenEnRutina': ordenEnRutina,
          },
        EnProgreso(:final iniciadoEn) => {
            'tipo': 'en_progreso',
            'iniciadoEn': iniciadoEn.toIso8601String(),
          },
        Completada(:final completadoEn, :final esfuerzoPercibido) => {
            'tipo': 'completada',
            'completadoEn': completadoEn.toIso8601String(),
            'esfuerzoPercibido': esfuerzoPercibido,
          },
      };

  bool get sePuedeEditar => switch (this) {
        Planificada() || EnProgreso() => true,
        Completada() => false,
      };

  String get etiqueta => switch (this) {
        Planificada(:final ordenEnRutina) => 'Planificada (Turno: $ordenEnRutina)',
        EnProgreso() => 'En progreso',
        Completada(:final esfuerzoPercibido) =>
          'Completada · Esfuerzo $esfuerzoPercibido/10',
      };
}