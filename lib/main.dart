import 'package:flutter/material.dart';
import 'package:mi_primer_app/features/entrenamientos/data/entrenamientos_locales.dart';
import 'package:mi_primer_app/features/entrenamientos/domain/sesion_ejercicio.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Entrenamientos',
        theme: ThemeData(colorSchemeSeed: Colors.indigo),
        home: const PantallaEntrenamientos(),
      );
}

class PantallaEntrenamientos extends StatefulWidget {
  const PantallaEntrenamientos({super.key});

  @override
  State<PantallaEntrenamientos> createState() => _PantallaEntrenamientosState();
}

class _PantallaEntrenamientosState extends State<PantallaEntrenamientos> {
  // `late final`: se instancia UNA sola vez al crear el State.
  // Evita que FutureBuilder ejecute la lectura nuevamente en cada rebuild.
  late final Future<List<SesionEjercicio>> _sesiones =
      EntrenamientosLocales().obtenerTodos();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Entrenamientos')),
        body: FutureBuilder<List<SesionEjercicio>>(
          future: _sesiones,
          builder: (context, snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              // Muestra la excepción CampoInvalido detallando cuál fue la clave errónea
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Error de formato en datos:\n${snapshot.error}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              );
            }

            final sesiones = snapshot.data ?? const <SesionEjercicio>[];
            if (sesiones.isEmpty) {
              return const Center(child: Text('No hay ejercicios registrados'));
            }

            return ListView.separated(
              itemCount: sesiones.length,
              separatorBuilder: (_, _) => const Divider(height: 1),
              itemBuilder: (context, i) {
                final sesion = sesiones[i];
                return ListTile(
                  title: Text(sesion.nombreEjercicio),
                  subtitle: Text(
                    '${sesion.musculoObjetivo} · ${sesion.estado.etiqueta}',
                  ),
                  trailing: sesion.tieneNotas
                      ? const Icon(Icons.sticky_note_2_outlined)
                      : null,
                );
              },
            );
          },
        ),
      );
}