import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Map<String, String> _loginData={
    'emain': '',
    'password': ''
  };
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  void _saveCredentials() {
    setState(() {
      _loginData = {
        'email': _emailController.text,
        'password': _passwordController.text
      };
    });
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido:',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromRGBO(0, 133, 182, 1),
                fontFamily: 'Comfortaa',
                fontSize: 56,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset('assets/imgs/logo_homepage.png'),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Usuario UIS'
              ),
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Contraseña'
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(103, 185, 62, 1)
              ),
              onPressed: () {}, child: Text('Continuar')),
            TextButton(
                style: TextButton.styleFrom(
                backgroundColor: Color.fromRGBO(103, 185, 62, 1)
              ),
              onPressed: () {}, child: Text('Bienestar UIS'))
          ],
        ),
      ),
    );
  }
}
