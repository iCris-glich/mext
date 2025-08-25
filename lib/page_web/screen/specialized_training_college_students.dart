import 'package:beca_mext/page_web/fuction/openLink.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> documentos = [
  {
    "titulo": "Guía",
    "link":
        "https://www.studyinjapan.go.jp/en/_mt/2025/04/2026_Guidelines_SpecializedTraining_E.pdf",
  },
  {
    "titulo": "Formulario para aplicar",
    "link":
        "https://www.studyinjapan.go.jp/en/_mt/2025/04/2026_Application_Undergraduate.pdf",
  },
  {
    "titulo": "Especialidades y Mateerias Relacionadas para Campos de Estudio",
    "link":
        "https://www.studyinjapan.go.jp/en/_mt/2025/04/2026_Guidelines_SpecializedTraining_E.pdf",
  },
  {
    "titulo": "Ejemplo de carta de recomendación",
    "link":
        "https://www.studyinjapan.go.jp/en/_mt/2025/04/2026_SampleRecommendation_SpecializedTraining.pdf",
  },
  {
    "titulo": "Ejemplo de exámenes",
    "link":
        "https://www.studyinjapan.go.jp/en/planning/scholarship/application/examination/",
  },
];

Widget specializedTrainigCollegeStudents(context) {
  return Column(
    children: [
      Text(
        "2. Programa de Specialized Training College Students (Nivel técnico universitario)",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Text(
        "Esta beca es de 3 años, dirigida a estudiantes del último año de secundaria o ya graduados. Es necesario haber nacido después del 2 de abril de 2001. Se puede aplicar a cualquier tipo de carrera universitaria disponible en Japón; la escuela técnica será asignada por Japón. En los siguientes enlaces están las guías y formularios para aplicar a la beca.",
        style: TextStyle(fontSize: 18, height: 1.5),
      ),
      const SizedBox(height: 20),
      Column(
        children: List.generate(documentos.length, (index) {
          return ListTile(
            title: Text(
              "${index + 1}). ${documentos[index]["titulo"]!}",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            onTap: () => a(index, documentos),
            trailing: Icon(Icons.picture_as_pdf, color: Colors.blue),
          );
        }),
      ),
      const SizedBox(height: 20),
      Text(
        "El expediente completo se entrega en SEGEPLAN en horario de 9:00 a 17:00 de lunes a viernes. (9 calle 10-44 Z.1 Edificio Central 1 nivel) Fecha límite de entrega será el día 13 de junio.",
        style: TextStyle(fontSize: 18, height: 1.5),
      ),
    ],
  );
}
