import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildRegisterScreen(context);
  }
}

Widget _buildRegisterScreen(BuildContext context) {
  double borderRadius = 10;
  Color fieldColor = const Color(0xFFFFF2EB);

  void handleRegister() {
    return;
  }

  return Scaffold(
    body: Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(30),
          child: Flex(
            direction: Axis.vertical,
            children: [
              const Row(
                children: [
                  Text(
                    'Bem vindo!',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Text(
                      'Registre-se',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Row(
                children: [
                  Text(
                    'preenchendo os dados abaixo',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                            borderSide: BorderSide.none,
                          ),
                          constraints: const BoxConstraints(
                            maxHeight: 60,
                            maxWidth: 350,
                            minHeight: 60,
                            minWidth: 350,
                          ),
                          fillColor: fieldColor,
                          filled: true,
                          hintText: 'Nome',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        cursorColor: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                            borderSide: BorderSide.none,
                          ),
                          constraints: const BoxConstraints(
                            maxHeight: 60,
                            maxWidth: 350,
                            minHeight: 60,
                            minWidth: 350,
                          ),
                          fillColor: fieldColor,
                          filled: true,
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        cursorColor: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                            borderSide: BorderSide.none,
                          ),
                          constraints: const BoxConstraints(
                            maxHeight: 60,
                            maxWidth: 350,
                            minHeight: 60,
                            minWidth: 350,
                          ),
                          fillColor: fieldColor,
                          filled: true,
                          hintText: 'CPF',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        cursorColor: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      PasswordField(
                        color: Theme.of(context).colorScheme.primary,
                        backgroundColor: fieldColor,
                        hintText: 'Senha',
                        errorMessage: 'Senha incorreta',
                        border: PasswordBorder(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        passwordDecoration: PasswordDecoration(
                          inputStyle: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              height: 1.4),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        passwordConstraint: r'.*',
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      PasswordField(
                        color: Theme.of(context).colorScheme.primary,
                        backgroundColor: fieldColor,
                        hintText: 'Confirme a senha',
                        errorMessage: 'Senhas não conferem',
                        border: PasswordBorder(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(borderRadius),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        passwordDecoration: PasswordDecoration(
                          inputStyle: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              height: 1.4),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        passwordConstraint: r'.*',
                      ),
                      const SizedBox(
                        height: 18,
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
                        child: const Text(
                          'Registrar',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 250,
                height: 25,
                child: Image.asset(
                  'assets/blackHomeIndicator.png',
                  height: 15,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
