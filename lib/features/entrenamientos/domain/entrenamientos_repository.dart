import 'package:mi_primer_app/features/entrenamientos/domain/sesion_ejercicio.dart';

/// Contrato abstracto que define las operaciones de lectura de entrenamientos.
///
/// Usa `abstract interface class` para garantizar un contrato puro que solo
/// puede ser implementado.
abstract interface class EntrenamientosRepository {
  Future<List<SesionEjercicio>> obtenerTodos();

  Future<SesionEjercicio?> obtenerPorId(String id);

  /// Regla propia del dominio: filtra y devuelve solo las sesiones que están pendientes.
  Future<List<SesionEjercicio>> obtenerPendientes();
}