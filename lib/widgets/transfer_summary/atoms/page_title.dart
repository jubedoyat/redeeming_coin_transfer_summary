import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  const PageTitle({
    super.key,
    required this.text,
  });

  final String text;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayLarge
    );
  }
}