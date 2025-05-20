import 'package:flutter/material.dart';
import 'perfil.dart';
import 'bienestar.dart';
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
  Map<String, String> _loginData = {
    'email': '', 
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
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PerfilPage()),
    );
  }
  void _goBienestar(){
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => const BienestarPage()),);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:[
          IconButton(
            icon: const Icon(Icons.help_outline_rounded),
            color: Color.fromRGBO(0, 133, 182, 0.6),
            iconSize: 40,
            onPressed: () {},)
        ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido:',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromRGBO(0, 133, 182, 0.4),
                fontFamily: 'Comfortaa',
                fontSize: 56,
                fontWeight: FontWeight.w300,
              ),
            ),
            
            Image.asset('assets/imgs/logo_homepage.png'),
            
            const SizedBox(height: 50),
            
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(103, 185, 64, 0.3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Usuario UIS',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(73, 69, 79, 1),
                  fontFamily: 'Comfortaa',
                  fontSize: 18,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 18,
                ),
                constraints: const BoxConstraints(
                  maxWidth: 356,
                  minHeight: 75,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
            ),
            
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(103, 185, 64, 0.3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Contraseña',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(73, 69, 79, 1),
                  fontFamily: 'Comfortaa',
                  fontSize: 18,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 18,
                ),
                constraints: const BoxConstraints(
                  maxWidth: 356,
                  minHeight: 75,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
            ),
            
            const SizedBox(height: 20),
            
            SizedBox(
              width: 356,
              height: 56,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(103, 185, 62, 1),
                ),
                onPressed: _saveCredentials,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continuar',
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            SizedBox(
              width: 356,
              height: 56,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(103, 185, 62, 1),
                ),
                onPressed: _goBienestar,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bienestar UIS',
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
