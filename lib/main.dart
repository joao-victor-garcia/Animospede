import 'package:flutter/material.dart';
import 'my_flutter_app_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animóspede',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 253, 171, 94)),
        useMaterial3: true,
      ),
      home: const LoginPage(title: 'Animóspede'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color buttonColor = const Color(0xFFFF8E54);
  Color fieldColor = const Color.fromRGBO(255, 255, 255, 0.25);
  double borderRadius = 10;

  void handleLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
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
                image: AssetImage('loginBackground.png'),
              ),
            ),
            child: Stack(children: [
              Container(
                color: Colors.black.withOpacity(0.7), // Cor preta com opacidade
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
                        backgroundColor: buttonColor,
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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
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
                    Container(
                      width: 250, // Defina a largura como um valor constante
                      child: const Text(
                        'Ao fazer login, você concorda com o contrato do Usuário e Termos de Privacidade.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 250,
                      child: Image.asset(
                        'homeIndicator.png',
                        height: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const Color backgroundColor = Color(0xFFFFFFFF);
  static const Color searchBackground = Color(0xFFFAFAFA);
  static const Color tabActiveColor = Color(0xFFFA6650);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          color: searchBackground, // Cor de fundo do TextField
          child: const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                ),
                hintText: 'Pesquisar',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                ),
                border: InputBorder.none),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: backgroundColor,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.homeicon),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.servicesicon),
            label: 'Serviços',
          ),
          BottomNavigationBarItem(
            icon: Icon(MyFlutterApp.profileicon),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: tabActiveColor, // Cor do ícone selecionado
        onTap: _onItemTapped,
      ),
    );
  }
}
