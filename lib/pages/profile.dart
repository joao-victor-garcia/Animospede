import 'package:flutter/material.dart';

Widget _buildProfilePage() {
  return CustomScrollView(
    slivers: <Widget>[
      const SliverAppBar(
        expandedHeight: 200.0, // Ajuste conforme necessário
        floating: false,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Perfil'),
          // Adicione outros widgets de cabeçalho flexível conforme necessário
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(
          <Widget>[
            // Conteúdo da página "Perfil" aqui
          ],
        ),
      ),
    ],
  );
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildProfilePage();
  }
}