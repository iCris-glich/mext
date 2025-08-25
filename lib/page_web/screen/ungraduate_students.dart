import 'package:beca_mext/page_web/fuction/openLink.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> documentos = [
  {
    "titulo": "Guía",
    "link":
        "https://www.studyinjapan.go.jp/en/_mt/2025/04/2026_Guidelines_Undergraduate_E.pdf",
  },
  {
    "titulo": "Formulario para aplicar",
    "link":
        "https://www.studyinjapan.go.jp/en/_mt/2025/04/2026_Application_Undergraduate.pdf",
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

Widget undergraduateStudent(context) {
  return Column(
    children: [
      Text(
        "1. Programa de Undergraduate Students (Nivel de licenciatura)",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Text(
        "Esta beca es de 5 a 7 años, dependiendo de la carrera, dirigida a estudiantes del último año de secundaria o ya graduados. Debe haber nacido después del 2 de abril de 2001. Se puede aplicar a cualquier tipo de carrera universitaria disponible en Japón. En los siguientes enlaces están las guías y formularios para aplicar a la beca. ",

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
        "El expediente completo se entrega en SEGEPLAN en horario de 9:00 a 17:00 de lunes a viernes. (9 calle 10-44 Z.1 Edificio Central 1 nivel) Fecha límite de entrega será el día 13 de junio. Hay oportunidades para la mayoría de las carreras universitarias, disponibles en Japón. (Música, Arte y Danza no aplica)",
        style: TextStyle(fontSize: 18, height: 1.5),
      ),
    ],
  );
}
