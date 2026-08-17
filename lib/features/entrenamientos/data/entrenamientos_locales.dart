import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:mi_primer_app/core/json.dart';
import 'package:mi_primer_app/features/entrenamientos/domain/entrenamientos_repository.dart';
import 'package:mi_primer_app/features/entrenamientos/domain/sesion_ejercicio.dart';

/// Firma de función para la lectura de assets de texto.
typedef LectorDeAssets = Future<String> Function(String ruta);

class EntrenamientosLocales implements EntrenamientosRepository {
  EntrenamientosLocales({
    LectorDeAssets? lector,
    this.ruta = 'assets/data/entrenamientos.json',
  }) : _lector = lector ?? rootBundle.loadString;

  final LectorDeAssets _lector;
  final String ruta;

  List<SesionEjercicio>? _cache;

  @override
  Future<List<SesionEjercicio>> obtenerTodos() async {
    final guardado = _cache;
    if (guardado != null) return guardado;

    final crudo = await _lector(ruta);
    final decodificado = jsonDecode(crudo);

    if (decodificado is! List) {
      throw const CampoInvalido(
        '(raíz)',
        'el archivo debe contener una lista',
        null,
      );
    }

    return _cache = decodificado
        .map((e) => SesionEjercicio.fromJson(e as Map<String, dynamic>))
        .toList(growable: false);
  }

  @override
  Future<SesionEjercicio?> obtenerPorId(String id) async {
    for (final sesion in await obtenerTodos()) {
      if (sesion.id == id) return sesion;
    }
    return null;
  }

  @override
  Future<List<SesionEjercicio>> obtenerPendientes() async {
    final todas = await obtenerTodos();
    return todas
        .where((sesion) => sesion.sePuedeEditar)
        .toList(growable: false);
  }
}
