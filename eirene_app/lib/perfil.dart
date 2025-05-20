import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  final TextEditingController _controller = TextEditingController();
  String situacion = '';

  final List<String> mensajes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Perfil', style: TextStyle(color: Colors.blueGrey)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blueGrey),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/imgs/avatar.jpg'),
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

            /// 🔹 Campo de texto en lugar del botón
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Cuéntanos tu situación...',
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    setState(() {
                      situacion = _controller.text;
                      mensajes.insert(0, situacion);
                      _controller.clear();
                    });
                  },
                ),
              ),
            ),

            const SizedBox(height: 24),

            /// 🔹 Lista de mensajes
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
                    Expanded(child: Text(msg, style: const TextStyle(fontSize: 14))),
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
    );
  }
}


