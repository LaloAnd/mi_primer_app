import 'package:mi_primer_app/core/json.dart';

/// Representa el punto exacto en el ciclo de vida de una sesión de entrenamiento.
///
/// `sealed` garantiza exhaustividad en el compilador: ningún estado puede ser
/// añadido fuera de este archivo y todos los `switch` deben cubrir cada caso
/// sin necesidad de un `default`.
sealed class EstadoSesion {
  const EstadoSesion();

  /// El ÚNICO sitio donde un texto del JSON se convierte en un tipo de estado.
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

  /// El único sitio donde vuelve a ser JSON.
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

  /// Regla de negocio: determina si la sesión aún se puede modificar.
  bool get sePuedeEditar => switch (this) {
        Planificada() || EnProgreso() => true,
        Completada() => false,
      };

  /// Etiqueta descriptiva para mostrar en pantalla.
  String get etiqueta => switch (this) {
        Planificada(:final ordenEnRutina) => 'Planificada (Turno: $ordenEnRutina)',
        EnProgreso() => 'En progreso',
        Completada(:final esfuerzoPercibido) =>
          'Completada · Esfuerzo $esfuerzoPercibido/10',
      };
}

final class Planificada extends EstadoSesion {
  const Planificada(this.ordenEnRutina)
      : assert(ordenEnRutina > 0, 'El orden en la rutina debe ser mayor a 0');

  final int ordenEnRutina;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Planificada && other.ordenEnRutina == ordenEnRutina;

  @override
  int get hashCode => Object.hash(runtimeType, ordenEnRutina);

  @override
  String toString() => 'Planificada(orden: $ordenEnRutina)';
}

final class EnProgreso extends EstadoSesion {
  const EnProgreso(this.iniciadoEn);

  final DateTime iniciadoEn;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EnProgreso && other.iniciadoEn == iniciadoEn;

  @override
  int get hashCode => Object.hash(runtimeType, iniciadoEn);

  @override
  String toString() => 'EnProgreso(iniciadoEn: $iniciadoEn)';
}

final class Completada extends EstadoSesion {
  const Completada(this.completadoEn, this.esfuerzoPercibido)
      : assert(
          esfuerzoPercibido >= 1 && esfuerzoPercibido <= 10,
          'El esfuerzo percibido debe estar entre 1 y 10',
        );

  final DateTime completadoEn;
  final int esfuerzoPercibido;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Completada &&
          other.completadoEn == completadoEn &&
          other.esfuerzoPercibido == esfuerzoPercibido;

  @override
  int get hashCode => Object.hash(runtimeType, completadoEn, esfuerzoPercibido);

  @override
  String toString() =>
      'Completada(completadoEn: $completadoEn, esfuerzo: $esfuerzoPercibido)';
}