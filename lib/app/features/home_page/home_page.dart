import 'package:flutter/material.dart';

/// Home Page, is responsable for delivery the main functionalities like:
/// create registers, open history..

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  // final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Aperte no botão para registrar suas encomendas!',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Registrar encomendas!',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Registrar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Minhas encomendas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),

            // icon: Icon(Icons.favorite),
            label: "Minha conta",
          ),
        ],
      ),
    );
  }
}
