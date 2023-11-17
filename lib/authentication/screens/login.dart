import 'package:animospede/authentication/components/show_snackbar.dart';
import 'package:animospede/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:animospede/authentication/services/auth_service.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmaController = TextEditingController();

  bool isEntrando = true;

  final _formKey = GlobalKey<FormState>();

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    Color fieldColor = const Color.fromRGBO(255, 255, 255, 0.25);
    double borderRadius = 10;

    void handleLogin() {
      Navigator.pushNamed(context, '/');
    }

    void handleRegister() {
      Navigator.pushNamed(context, '/register');
    }

    return Scaffold(
      body: Stack(
        children: [
          Form(
            key: _formKey,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/loginBackground.png'),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    color: Colors.black
                        .withOpacity(0.7), // Cor preta com opacidade
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
                        TextFormField(
                          controller: _emailController,
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
                          validator: ((value) {
                            if (value == null || value == "") {
                              return "O valor de e-mail deve ser preenchido";
                            }
                            if (!value.contains("@") ||
                                !value.contains(".") ||
                                value.length < 4) {
                              return "O valor do e-mail deve ser válido";
                            }
                            return null;
                          }),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        TextFormField(
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
                          controller: _senhaController,
                          validator: (value) {
                            if (value == null || value.length < 4) {
                              return "Insira uma senha válida.";
                            }
                            return null;
                          },
                        ),
                        TextButton(
                          onPressed: () {
                            esqueciMinhaSenhaClicado();
                          },
                          child: Text("Esqueci minha senha"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            botaoEnviarClicado();
                          },
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
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          width: 250,
                          height:
                              70, // Defina a largura como um valor constante
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
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  botaoEnviarClicado() {
    String email = _emailController.text;
    String senha = _senhaController.text;

    if (_formKey.currentState!.validate()) {
      _entrarUsuario(email: email, senha: senha);
    }
  }

  _entrarUsuario({required String email, required String senha}) {
    authService.entrarUsuario(email: email, senha: senha).then((String? erro) {
      if (erro != null) {
        showSnackBar(context: context, mensagem: erro);
      }else{
      Navigator.pushNamed(context, '/');}
    });
  }

  esqueciMinhaSenhaClicado() {
    String email = _emailController.text;
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController redefinicaoSenhaController =
            TextEditingController(text: email);
        return AlertDialog(
          title: const Text("Confirme o e-mail para redefinição da senha"),
          content: TextFormField(
            controller: redefinicaoSenhaController,
            decoration: const InputDecoration(label: Text("Confirme o E-mail")),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(32))),
          actions: [
            TextButton(
              onPressed: () {
                authService
                    .redefinicaoSenha(email: redefinicaoSenhaController.text)
                    .then((String? erro) {
                  if (erro == null) {
                    showSnackBar(
                        context: context,
                        mensagem: "E-mail de redefinição enviado!",
                        isErro: false);
                  } else {
                    showSnackBar(context: context, mensagem: erro);
                  }

                  Navigator.pop(context);
                });
              },
              child: const Text("Redefinir senha"),
            )
          ],
        );
      },
    );
  }
}
