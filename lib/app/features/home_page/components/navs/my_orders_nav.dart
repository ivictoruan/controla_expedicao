import 'package:flutter/material.dart';

class MyOrdersNav extends StatelessWidget {
  const MyOrdersNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Encomendas'),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Comece criando encomendas para que \n        você possa acompanhá-las!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          // ),
          // Text(
          //   '$_counter',
          //   style: Theme.of(context).textTheme.headline4,
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton( // aparecer apenas se houver encomendas
        // onPressed: _incrementCounter,
        onPressed: () {},
        tooltip: 'Despachar encomenda!',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
