import 'package:flutter/material.dart';

class RegisterNewOrderNav extends StatelessWidget {
  const RegisterNewOrderNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Registar'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Aperte no botão para registrar suas encomendas!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          // Text(
          //   '$_counter',
          //   style: Theme.of(context).textTheme.headline4,
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: _incrementCounter,
        onPressed: (){},
        tooltip: 'Registrar encomendas!',
        child: const Icon(Icons.add),
      ),
    );
  }
}
