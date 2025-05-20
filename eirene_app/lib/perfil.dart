import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> mensajes = [
      'Me aterra hablar en público. Solo pensar en levantar la mano en clase me pone nervioso...',
      'No puedo dejar de pensar en el futuro. ¿Y si nunca consigo un buen trabajo?',
      'Hace semanas que no duermo bien. Mi mente no para de dar vueltas...',
      'Cada vez me siento más solo. Mis amigas están ocupadas, mi familia no me entiende...',
      'Siento que todo el tiempo debo ser perfecto... eso me consume.',
      'Hace semanas que no duermo bien. Mi mente no para de dar vueltas...',
      'Cada vez me siento más solo. Mis amigas están ocupadas, mi familia no me entiende...',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Perfil',
          style: TextStyle(color: Colors.blueGrey),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blueGrey),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/imgs/avatar.jpg'), // Cambia esto por tu imagen
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Nickname',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.add_circle, color: Colors.green),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ListTile(
                  title: const Text('Cuéntanos tu situación...'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Aquí va tu lógica
                  },
                ),
              ),
              const SizedBox(height: 24),
              ...mensajes.map(
                (msg) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFCFE7C1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          msg,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.edit, color: Colors.green),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

