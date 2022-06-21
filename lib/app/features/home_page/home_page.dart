import 'package:controla_expedicao/app/features/home_page/components/general_nav_widget.dart';
import 'package:controla_expedicao/app/features/home_page/components/navs/my_orders_nav.dart';
import 'package:controla_expedicao/app/features/home_page/components/navs/register_new_order_nav.dart';
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
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _screensNav = <Widget>[
    const RegisterNewOrderNav(),
    const MyOrdersNav(),
    // const GeneralNavWidget(
    //   text: 'Minha conta',
    // ),
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
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'Aperte no botão para registrar suas encomendas!',
      //         style: Theme.of(context).textTheme.bodyLarge,
      //       ),
      //       // Text(
      //       //   '$_counter',
      //       //   style: Theme.of(context).textTheme.headline4,
      //       // ),
      //     ],
      //   ),
      // ),
      body: _screensNav.elementAt(_currentIndex),
      // floatingActionButton: FloatingActionButton(
      //   // onPressed: _incrementCounter,
      //   onPressed: (){},
      //   tooltip: 'Registrar encomendas!',
      //   child: const Icon(Icons.add),
      // ),
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
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'Minha conta',
          // ),
        ],
        selectedItemColor: Colors.black,
        onTap: _onTabTapped,
        // items: _screensNav,
      ),
    );
  }
}
