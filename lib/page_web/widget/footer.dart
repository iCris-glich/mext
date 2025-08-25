import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[900],
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Sección superior con links
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Enlaces rápidos
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enlaces",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("Inicio", style: TextStyle(color: Colors.white70)),
                  Text("Convocatoria", style: TextStyle(color: Colors.white70)),
                  Text("Requisitos", style: TextStyle(color: Colors.white70)),
                  Text("Contacto", style: TextStyle(color: Colors.white70)),
                ],
              ),

              // Información de contacto
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contacto",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "📧 cristhianadielm@gmail.com",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),

              // Redes sociales (opcional)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sígueme",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text("🔗 GitHub", style: TextStyle(color: Colors.white70)),
                  Text("🔗 LinkedIn", style: TextStyle(color: Colors.white70)),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),
          const Divider(color: Colors.white30),

          // Nota legal inferior
          Text(
            "Esta es una página de prueba, no oficial.",
            style: const TextStyle(color: Colors.white54, fontSize: 12),
          ),
          const SizedBox(height: 4),
          Text(
            "© 2025 Cristhian Muñoz. Todos los derechos reservados.",
            style: const TextStyle(color: Colors.white54, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
