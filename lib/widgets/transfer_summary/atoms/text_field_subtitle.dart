import 'package:flutter/material.dart';

class TextFieldSubtitle extends StatelessWidget {

  const TextFieldSubtitle({
    super.key,
    required this.text,
  });

  final String text;
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: Theme.of(context).textTheme.bodyMedium,
    );
  }
}