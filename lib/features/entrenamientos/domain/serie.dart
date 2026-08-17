import 'package:mi_primer_app/core/json.dart';

/// Define las métricas recomendadas o ejecutadas en una serie de ejercicio.
///
/// Es un **Objeto de Valor**: dos series con el mismo número de repeticiones,
/// peso y tiempo de descanso son exactamente la misma serie.
/// No tiene `id` propio y se compara por su contenido.
class Serie {
  const Serie({
    required this.repeticiones,
    required this.pesoKg,
    required this.tiempoDescansoSegundos,
  }) : assert(repeticiones > 0, 'Las repeticiones deben ser mayores a 0'),
       assert(pesoKg >= 0, 'El peso no puede ser negativo'),
       assert(
         tiempoDescansoSegundos >= 0,
         'El tiempo de descanso no puede ser negativo',
       );

  factory Serie.fromJson(Map<String, dynamic> json) => Serie(
    repeticiones: leerEntero(json, 'repeticiones'),
    pesoKg: leerDecimal(json, 'pesoKg'),
    tiempoDescansoSegundos: leerEntero(json, 'tiempoDescansoSegundos'),
  );

  final int repeticiones;
  final double pesoKg;
  final int tiempoDescansoSegundos;

  Map<String, dynamic> toJson() => {
    'repeticiones': repeticiones,
    'pesoKg': pesoKg,
    'tiempoDescansoSegundos': tiempoDescansoSegundos,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Serie &&
          other.repeticiones == repeticiones &&
          other.pesoKg == pesoKg &&
          other.tiempoDescansoSegundos == tiempoDescansoSegundos;

  @override
  int get hashCode => Object.hash(repeticiones, pesoKg, tiempoDescansoSegundos);

  @override
  String toString() =>
      'Serie($repeticiones reps, ${pesoKg}kg, ${tiempoDescansoSegundos}s descanso)';
}
