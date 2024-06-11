import 'package:flutter/material.dart';
import 'package:flutter_projetoint/telas/TelaEspecialidades.dart';
import 'package:flutter_projetoint/telas/TelaVeterinarios.dart';

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              child: Text(
                'Menu Principal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Especialidade'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TelaEspecialidades()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Veterinarios'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TelaVeterinarios()),
                );
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text('Bem-vindo à Tela Principal!',
            style: TextStyle(color: Colors.blueGrey,fontSize: 20,)
        ),
      ),
    );
  }
}