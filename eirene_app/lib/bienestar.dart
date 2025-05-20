import 'package:flutter/material.dart';

class BienestarPage extends StatefulWidget {
  const BienestarPage({super.key});

  @override
  State<BienestarPage> createState() => _BienestarPageState();
}

class _BienestarPageState extends State<BienestarPage> {
  final TextEditingController _controller = TextEditingController();
  String situacion = '';

  final List<String> mensajes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Pe', style: TextStyle(color: Colors.blueGrey)),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienestar',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromRGBO(0, 133, 182, 0.4),
                fontFamily: 'Comfortaa',
                fontSize: 56,
                fontWeight: FontWeight.w300,
              ),),
              const SizedBox(height: 67),
              Text(
                'Bienestar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(0, 133, 182, 0.4),
                  fontFamily: 'Comfortaa',
                  fontSize: 56,
                  fontWeight: FontWeight.w300,
                ),
              )
          ],
        ),
          
      ),
    );
  }
}


