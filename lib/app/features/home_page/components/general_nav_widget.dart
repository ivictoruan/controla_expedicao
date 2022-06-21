import 'package:flutter/material.dart';

class GeneralNavWidget extends StatelessWidget {
  final String text;
  final Widget? bodyContent;

  const GeneralNavWidget({Key? key, required this.text, this.bodyContent,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        elevation: 0,
        toolbarHeight: 30,
        centerTitle: true,
      ),
      body: bodyContent,
    );
  }
}
