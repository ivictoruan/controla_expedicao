import 'package:flutter/material.dart';

class RegisterNewOrderNav extends StatelessWidget {
  const RegisterNewOrderNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Aperte no botão para registrar suas encomendas!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){}, // ao pressionar, gerar um fomulário (registrar encomenda.)
        tooltip: 'Registrar encomendas!',
        child: const Icon(Icons.add),
      ),
    );
  }
}
