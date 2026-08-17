# mi_primer_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
### Flutter Doctor Captura de pantalla
<img width="1197" height="413" alt="image" src="https://github.com/user-attachments/assets/4aeed62e-912e-4998-a37a-cf8dafdc9fcf" />
Decisión de modelado (Paso 11):

Se optó por una estrategia híbrida: utilizar Freezed para la generación automática de inmutabilidad, copyWith, ==, hashCode y toString, manteniendo fromJson y toJson escritos a mano.

Ganancia: Nos liberamos de escribir más de 100 líneas de código repetitivo de comparación e inmutabilidad, garantizando comparaciones profundas en colecciones (List<String> notas).

Control: Conservamos los validadores manuales que lanzan exepciones explícitas CampoInvalido al parsear JSON, garantizando mensajes de error legibles y diagnósticos precisos ante datos corruptos.
