import 'package:animospede/authentication/components/show_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:animospede/authentication/services/auth_service.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmaController = TextEditingController();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();

  bool isEntrando = true;

  final _formKey = GlobalKey<FormState>();

  AuthService authService = AuthService();

  Widget build(BuildContext context) {
    double borderRadius = 10;
    Color fieldColor = const Color(0xFFFFF2EB);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
      ),
      body: Stack(
        children: [
          Form(
            key: _formKey,
            child: Container(
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
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        'preenchendo os dados abaixo',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Center(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _nomeController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
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
                            validator: (value) {
                              if (value == null || value.length < 3) {
                                return "Insira um nome maior.";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
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
                            validator: (value) {
                              if (value == null || value == "") {
                                return "O valor de e-mail deve ser preenchido";
                              }
                              if (!value.contains("@") ||
                                  !value.contains(".") ||
                                  value.length < 4) {
                                return "O valor do e-mail deve ser válido";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _cpfController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
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
                            validator: (value) {
                              if (value == null || value.length < 11) {
                                return "Insira um CPF válido.";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _senhaController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
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
                              hintText: 'Senha',
                              hintStyle: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            cursorColor: Theme.of(context).colorScheme.primary,
                            validator: (value) {
                              if (value == null || value.length < 4) {
                                return "Insira uma senha válida.";
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _confirmaController,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
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
                              hintText: 'Confirme a senha',
                              hintStyle: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            cursorColor: Theme.of(context).colorScheme.primary,
                            validator: (value) {
                              if (value == null || value.length < 4) {
                                return "Insira uma confirmação de senha válida.";
                              }
                              if (value != _senhaController.text) {
                                return "As senhas devem ser iguais.";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 18,
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
                                borderRadius:
                                    BorderRadius.circular(borderRadius),
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

  botaoEnviarClicado() {
    String nome = _nomeController.text;
    String email = _emailController.text;
    String cpf = _cpfController.text;
    String senha = _senhaController.text;

    if (_formKey.currentState!.validate()) {
      _criarUsuario(nome: nome, email: email, cpf: cpf, senha: senha);
    }
  }

  _criarUsuario(
      {required String nome,
      required String email,
      required String cpf,
      required String senha}) {
    authService
        .cadastrarUsuario(nome: nome, email: email, cpf: cpf, senha: senha)
        .then((String? erro) {
      if(erro!=null){
        showSnackBar(context: context, mensagem: erro);
      }    
    });
  }
}
