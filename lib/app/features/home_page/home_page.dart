import 'package:controla_expedicao/app/features/home_page/components/navs/my_orders/view/my_orders_nav.dart';
import 'package:controla_expedicao/app/features/home_page/components/navs/register_new_order/register_new_order_nav.dart';
import 'package:flutter/material.dart';

/// Home Page, is responsable for delivery the main functionalities like:
/// create registers, open history..

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screensNav = <Widget>[
    const RegisterNewOrderNav(),
    const MyOrdersNav(),
  ];

  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screensNav.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Registrar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Encomendas',
          ),
        ],
        selectedItemColor: Colors.black,
        onTap: _onTabTapped,
        // items: _screensNav,
      ),
    );
  }
}
