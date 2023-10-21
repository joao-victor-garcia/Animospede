import 'package:flutter/material.dart';
import 'content.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color fieldColor = const Color.fromRGBO(255, 255, 255, 0.25);
  double borderRadius = 10;

  void handleLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ContentPage()),
    );
  }

  void handleRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/loginBackground.png'),
              ),
            ),
            child: Stack(
              children: [
                Container(
                  color:
                      Colors.black.withOpacity(0.7), // Cor preta com opacidade
                  width: double.infinity,
                  height: double.infinity,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Animóspede',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          constraints: const BoxConstraints(
                            maxHeight: 60,
                            maxWidth: 350,
                            minHeight: 60,
                            minWidth: 350,
                          ),
                          fillColor: fieldColor,
                          filled: true,
                          hintText: 'E-mail',
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 20, top: 20, bottom: 20, right: 20),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          constraints: const BoxConstraints(
                            maxHeight: 60,
                            maxWidth: 350,
                            minHeight: 60,
                            minWidth: 350,
                          ),
                          fillColor: fieldColor,
                          filled: true,
                          hintText: 'Senha',
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 20, top: 20, bottom: 20, right: 20),
                        ),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: handleLogin,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          minimumSize: const Size(355, 60),
                        ),
                        child: const Text('Logar'),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      ElevatedButton(
                        onPressed: handleRegister,
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                          ),
                          minimumSize: const Size(355, 60),
                        ),
                        child: const Text('Registrar-se'),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 250,
                        height: 70, // Defina a largura como um valor constante
                        child: Text(
                          'Ao fazer login, você concorda com o contrato do Usuário e Termos de Privacidade.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 25,
                        child: Image.asset(
                          'assets/homeIndicator.png',
                          height: 15,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
