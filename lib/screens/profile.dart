import 'package:flutter/material.dart';
import 'package:animospede/widgets/app_bar/appbar_iconbutton.dart';
import 'package:animospede/widgets/app_bar/appbar_image.dart';
import 'package:animospede/widgets/app_bar/custom_app_bar.dart';
import 'package:animospede/widgets/custom_elevated_button.dart';
import 'package:animospede/widgets/custom_image_view.dart';
import 'package:animospede/widgets/custom_radio_button.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ImagePicker picker = ImagePicker();
  PickedFile? profileImage;
  PickedFile? backgroundImage;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  String radioGroup = "";
  final data = {
    'phoneNumber': '+55 (17) 99286-2586',
    'name': "Matheus Henrique",
    'email': "matheus.barreto@fatec.sp.gov.br",
    'profileImage': AssetImage('dogprofile.jpg'),
    'backgroundImage': AssetImage('background.jpg'),
  };

  Map<String, bool> isEditing = {
    'name': false,
    'email': false,
    'phoneNumber': false,
  };

  @override
  void initState() {
    super.initState();
    nameController.text = data["name"] as String;
    emailController.text = data["email"] as String;
    phoneNumberController.text = data["phoneNumber"] as String;
    radioGroup = data["phoneNumber"] as String;
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  Widget buildEditableField({
    required String label,
    required String value,
    required TextEditingController controller,
    required bool isEditing,
    required String fieldName,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 9),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: isEditing
                  ? TextFormField(
                      controller: controller,
                      style: TextStyle(fontSize: 16),
                    )
                  : Text(
                      value,
                      style: TextStyle(fontSize: 16),
                    ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Atualize a variável isEditing correta no mapa com base no nome do campo
                  isEditingMap[fieldName] = !isEditing;
                });
              },
              child: CustomImageView(
                svgPath: 'assets/img_editcirclesvgrepocom.svg',
                height: 27,
                width: 27,
                radius: BorderRadius.circular(13),
                margin: EdgeInsets.only(
                  top: 14,
                  bottom: 6,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Map<String, bool> isEditingMap = {
    'name': false,
    'email': false,
    'phoneNumber': false,
  };

  Future<File> saveImageToDisk(File image) async {
    final localPath = r'C:\Users\User\Documents\Animospede\assets';
    final fileName = 'profileimage.png';

    print(image.path);
    final localFile = File('$localPath\\$fileName');
    print(localFile);
    try {
      await localFile.writeAsBytes(await image.readAsBytes());
    } catch (e) {
      print('Error writing file: $e');
      // Trate o erro conforme necessário, por exemplo, mostrando uma mensagem de erro ao usuário.
    }
    print(image);
    return localFile;
  }

  File? selectedImage;
  bool isEditingImage = false;
  TextEditingController imagePathController = TextEditingController();

// Função para abrir a galeria e escolher uma imagem
  void pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    print('entro no pick');
    if (pickedFile != null) {
      final file = File(pickedFile.path);
      setState(() {
        selectedImage = file;
        print(selectedImage);

        isEditingImage = true;
      });
    }
  }

// Função para salvar a imagem e exibir o caminho
  void saveImage() async {
    if (selectedImage != null) {
      print("entro");
      final savedImage = await saveImageToDisk(selectedImage!);
      setState(() {
        print("inmg: ${savedImage.path}");
        imagePathController.text = savedImage.path;
        isEditingImage = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 241, // Defina a altura do appBar para 241 pixels
          centerTitle: true,
          title: SizedBox(
            height: 241, // Defina a altura do título do appBar para 241 pixels
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    // Plano de fundo com ícone
                    Container(
                      margin: EdgeInsets.only(bottom: 50),
                      width: double.infinity,
                      height:
                          241, // Defina a altura do plano de fundo para 241 pixels
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: data['backgroundImage'] as ImageProvider,
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        color: Colors.black.withOpacity(0.7),
                      ),
                      child: Stack(
                        children: [
                          // Adicione seu ícone ao plano de fundo aqui
                          Positioned(
                            left: 10, // Ajuste a posição conforme necessário
                            top: 10, // Ajuste a posição conforme necessário
                            child: CustomImageView(
                              svgPath: 'assets/img_editcirclesvgrepocom.svg',
                              height: 40,
                              width: 40,
                              radius: BorderRadius.circular(13),
                              margin: EdgeInsets.only(
                                top: 14,
                                bottom: 6,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Perfil com ícone
                    // Perfil com ícone
                    Container(
                      width: 131,
                      height: 131,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            width: 131,
                            height: 131,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: profileImage != null
                                    ? FileImage(File(profileImage!.path))
                                    : data['profileImage'] as ImageProvider,
                                fit: BoxFit.cover,
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 8,
                              ),
                            ),
                          ),
                          // Ícone de edição azul abaixo da foto
                          Container(
                            height: 40, // Altura desejada
                            width: 40, // Largura desejada
                            child: Stack(
                              children: [
                                // Adicione seu ícone ao plano de fundo aqui
                                Positioned(
                                  child: CustomImageView(
                                    svgPath:
                                        'assets/img_editcirclesvgrepocom.svg',
                                    height: 40,
                                    width: 40,
                                    radius: BorderRadius.circular(13),
                                  ),
                                ),

                                // Adicione o GestureDetector diretamente na foto
                                GestureDetector(
                                  onTap: pickImage,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 23,
          ),
          child: Column(
            children: [
              Text(
                "Minha conta",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 43),
              buildEditableField(
                label: "Nome",
                value: data["name"] as String,
                controller: nameController,
                isEditing: isEditingMap['name'] ?? false,
                fieldName: 'name',
              ),
              buildEditableField(
                label: "E-mail",
                value: data["email"] as String,
                controller: emailController,
                isEditing: isEditingMap['email'] ?? false,
                fieldName: 'email',
              ),
              buildEditableField(
                label: "Contato",
                value: data["phoneNumber"] as String,
                controller: phoneNumberController,
                isEditing: isEditingMap['phoneNumber'] ?? false,
                fieldName: 'phoneNumber',
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 19,
                  width: 98,
                  margin: EdgeInsets.only(
                    left: 2,
                    top: 21,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Editar senha",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 15,
                          width: 98,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomElevatedButton(
                height: 59,
                text: "Salvar",
                margin: EdgeInsets.only(
                  left: 18,
                  top: 42,
                  right: 18,
                ),
                buttonTextStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xFFFA6650)), // Cor de fundo
                ),
                onTap: () {
                  saveImage();
                  // Exibir campos atuais em um console.log
                  print("Nome: ${nameController.text}");
                  print("E-mail: ${emailController.text}");
                  print("Contato: ${phoneNumberController.text}");

                  // Ou mostrar um alerta com os valores atuais
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Valores Atuais"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nome: ${nameController.text}"),
                            Text("E-mail: ${emailController.text}"),
                            Text("Contato: ${phoneNumberController.text}"),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 18),
              Text(
                "Sair",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
