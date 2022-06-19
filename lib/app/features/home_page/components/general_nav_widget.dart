import 'package:flutter/material.dart';

class GeneralNavWidget extends StatelessWidget {
  final String text;
  // final Widget content;

  const GeneralNavWidget({Key? key, required this.text,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
