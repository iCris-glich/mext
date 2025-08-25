import 'package:beca_mext/page_web/widget/footer.dart';
import 'package:beca_mext/page_web/screen/research_students.dart';
import 'package:beca_mext/page_web/screen/specialized_training_college_students.dart';
import 'package:beca_mext/page_web/screen/ungraduate_students.dart';
import 'package:flutter/material.dart';

Widget barra(context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "【CONVOCATORIA】 Programa de Becas para Estudios en Japón 2026 por el Ministerio de Educación, Cultura, Deportes, Ciencia y Tecnología del Japón (Monbukagakusho: MEXT)",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget texto(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Se les informa que la convocatoria de becas 2026 ya se cerró. La información que aparece a continuación debe tomarse únicamente como referencia. La nueva convocatoria se estará publicando el próximo año.",
        style: TextStyle(
          fontSize: 18,
          height: 1.5,
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 20),
      Text(
        '''El Ministerio de Educación, Cultura, Deportes, Ciencia y Tecnología del Japón (Monbukagakusho: MEXT) ofrece el Programa de Becas a jóvenes y profesionales guatemaltecos para estudiar en universidades japonesas a partir de abril u octubre de 2026.
 
Con el objetivo de desarrollar recursos humanos que puedan servir como puente entre Japón y Guatemala, y contribuir al desarrollo de ambos países e incluso del mundo, estamos convocando estudiantes extranjeros que cumplan con las siguientes condiciones.''',
        style: TextStyle(fontSize: 18, height: 1.5),
      ),
      SizedBox(height: 20),
      Text(
        "Beneficios:",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Text(
        "- Exención de matrícula en la universidad japonesa.\n"
        "- Subsidio mensual para gastos de manutención.\n"
        "- Boleto aéreo de ida y vuelta entre Guatemala y Japón.\n"
        "- Seguro médico durante el período de estudios.",
        style: TextStyle(fontSize: 18, height: 1.5),
      ),
      SizedBox(height: 20),
      Text(
        "Requisitos:",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Text(
        "- Ser ciudadano guatemalteca.\n"
        "- Dominio del idioma inglés (escrito y hablado) y japonés para el programa de Undergraduate Students (nivel licenciatura) y programa Specialized Training College Students (nivel técnico universitario).\n"
        "- Dominio del idioma inglés (hablado y escrito) o japonés para el programa de Research Students (maestría).\n"
        "- Excelencia académica.\n"
        "- Buena salud física.\n"
        "- Tener interés en la cultura japonesa y disposición para aprender el idioma japonés.",
        style: TextStyle(fontSize: 18, height: 1.5),
      ),
      const SizedBox(height: 20),
      undergraduateStudent(context),
      const SizedBox(height: 20),
      specializedTrainigCollegeStudents(context),
      const SizedBox(height: 20),
      researchStudents(context),
      const SizedBox(height: 10),
      Footer(),
    ],
  );
}
