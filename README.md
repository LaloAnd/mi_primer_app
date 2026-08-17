# Mi Primer App : Registro de Entrenamientos

Aplicación en Flutter para el registro, seguimiento y validación de sesiones de entrenamiento físico y series de ejercicio localmente.

## El dominio

- SesionEjercicio : Entidad principal. Identidad: id.
- Serie : Objeto de valor (repeticiones y peso).
- EstadoSesion : Clase sellada (sealed class): Planificada, EnProgreso, Completada.

Decision: Se utilizó freezed para garantizar inmutabilidad, copyWith y comparación por valor en el dominio, combinandolo con des-serialización manual basada en adaptadores defensivos (leerTexto, leerFecha, etc.) para lanzar excepciones CampoInvalido ante JSONs malformados.

## Cómo correr el proyecto

- Clonar el repositorio:
   git clone <https://github.com/LaloAnd/mi_primer_app.git> , cd mi_primer_app
- Instalar dependencias:
flutter pub get
- Generar codigo de Freezed:
dart run build_runner build --delete-conflicting-outputs
- Ejecutar las pruebas unitarias y de widgets:
flutter test
- Ejecutar la aplicacion:
flutter run
### Flutter Doctor Captura de pantalla
<img width="1197" height="413" alt="image" src="https://github.com/user-attachments/assets/4aeed62e-912e-4998-a37a-cf8dafdc9fcf" />
