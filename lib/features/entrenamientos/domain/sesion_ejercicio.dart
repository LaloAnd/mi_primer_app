import 'package:mi_primer_app/core/comparaciones.dart';
import 'package:mi_primer_app/core/json.dart';
import 'package:mi_primer_app/features/entrenamientos/domain/estado_sesion.dart';
import 'package:mi_primer_app/features/entrenamientos/domain/serie.dart';

/// Define una sesión de entrenamiento.
///
/// Es una **Entidad**: posee identidad única (`id`). Dos sesiones con el mismo
/// nombre o ejercicio son entidades distintas si tienen un `id` diferente.
class SesionEjercicio {
  const SesionEjercicio({
    required this.id,
    required this.nombreEjercicio,
    required this.musculoObjetivo,
    required this.serieObjetivo,
    required this.creadoEn,
    required this.estado,
    this.notas = const <String>[],
  });

  factory SesionEjercicio.fromJson(Map<String, dynamic> json) => SesionEjercicio(
        id: leerTexto(json, 'id'),
        nombreEjercicio: leerTexto(json, 'nombreEjercicio'),
        musculoObjetivo: leerTexto(json, 'musculoObjetivo'),
        serieObjetivo: Serie.fromJson(leerMapa(json, 'serieObjetivo')),
        creadoEn: leerFecha(json, 'creadoEn'),
        estado: EstadoSesion.fromJson(leerMapa(json, 'estado')),
        notas: leerTextos(json, 'notas'),
      );

  final String id;
  final String nombreEjercicio;
  final String musculoObjetivo;
  final Serie serieObjetivo;
  final DateTime creadoEn;
  final EstadoSesion estado;
  final List<String> notas;

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

  /// Indica si la sesión tiene anotaciones registradas.
  bool get tieneNotas => notas.isNotEmpty;

  /// Delega la regla de modificabilidad al estado actual.
  bool get sePuedeEditar => estado.sePuedeEditar;

  /// Calcula la antigüedad de la sesión recibiendo la fecha actual desde afuera.
  Duration antiguedad(DateTime ahora) => ahora.difference(creadoEn);

  /// Determina si la sesión lleva más de 7 días sin completarse o atenderse.
  bool estaObsoleta(DateTime ahora) => antiguedad(ahora) > const Duration(days: 7);

  // ── Copia ───────────────────────────────────────────────────────────────

  SesionEjercicio copyWith({
    String? nombreEjercicio,
    String? musculoObjetivo,
    Serie? serieObjetivo,
    EstadoSesion? estado,
    List<String>? notas,
  }) =>
      SesionEjercicio(
        id: id, // La identidad NO se modifica al copiar
        nombreEjercicio: nombreEjercicio ?? this.nombreEjercicio,
        musculoObjetivo: musculoObjetivo ?? this.musculoObjetivo,
        serieObjetivo: serieObjetivo ?? this.serieObjetivo,
        creadoEn: creadoEn, // Tampoco cambia la fecha de creación
        estado: estado ?? this.estado,
        notas: notas ?? this.notas,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SesionEjercicio &&
          other.id == id &&
          other.nombreEjercicio == nombreEjercicio &&
          other.musculoObjetivo == musculoObjetivo &&
          other.serieObjetivo == serieObjetivo &&
          other.creadoEn == creadoEn &&
          other.estado == estado &&
          listasIguales(other.notas, notas);

  @override
  int get hashCode => Object.hash(
        id,
        nombreEjercicio,
        musculoObjetivo,
        serieObjetivo,
        creadoEn,
        estado,
        Object.hashAll(notas), // Hashea el contenido de la lista, no la referencia
      );

  @override
  String toString() => 'SesionEjercicio($id, $nombreEjercicio, ${estado.etiqueta})';
}