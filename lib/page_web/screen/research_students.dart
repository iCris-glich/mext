import 'package:beca_mext/page_web/fuction/openLink.dart';
import 'package:flutter/material.dart';

List<Map<String, String>> documentos = [
  {
    "titulo": "Guía",
    "link":
        "https://www.studyinjapan.go.jp/en/_mt/2025/04/01-2026_Research_Guidelines_E.pdf",
  },
  {
    "titulo": "Formulario para aplicar",
    "link":
        "https://www.studyinjapan.go.jp/en/_mt/2025/04/2026_Application_Undergraduate.pdf",
  },
  {
    'titulo': 'Formulario de preferencia de universidad',
    'link':
        'https://www.studyinjapan.go.jp/en/_mt/2025/04/04-2026_Research_Placement.pdf',
  },
  {
    "titulo": "Campo de estudio y plan de investigación",
    "link":
        "https://www.studyinjapan.go.jp/en/_mt/2025/04/05-2026_Research_Studyplan.pdf",
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

Widget researchStudents(context) {
  return Column(
    children: [
      Text(
        "3. Programa de Research Students (Estudiantes de investigación)",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      Text(
        "Esta beca es de 2 años, como un alumno de investigación u oyente. Sin embargo, en algunos casos el estudiante puede pasar al curso de maestría inmediatamente después de completar el estudio del idioma japonés. Dirigida a profesionales o universitarios que se graduarán antes de octubre 2025. Debe haber nacido después del 2 de abril de 1991. Hay oportunidades para la mayoría de las carreras universitarias, disponibles en Japón. (Música, Arte y Danza no aplica) ¿Cómo aplicar a la beca? Lea la guía detenidamente. Luego llena los formularios.",
        style: TextStyle(fontSize: 18, height: 1.5),
      ),
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
        "Enviar el expediente completo en PDF al correo beca@gt.mofa.go.jp  a más tardar el 11 de junio, 2025 (Favor de reducir el tamaño total del documento adjunto en menos de 10mg)",
        style: TextStyle(fontSize: 18, height: 1.5),
      ),
    ],
  );
}
