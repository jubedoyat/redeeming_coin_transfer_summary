import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {

  const CustomElevatedButton({
    super.key,
    required  String text,
    required void Function() onPressed,
  }) : 
    _onPressed = onPressed,
    _text = text;

  final String _text;
  final void Function() _onPressed;

  @override
  State<StatefulWidget> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {

  bool isChecked = false;

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              width: screenWidth-10,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.onSecondaryContainer,
                  Theme.of(context).colorScheme.onPrimaryContainer
                ])
              ),
            ),
          ),
          TextButtonTheme(
            data: Theme.of(context).textButtonTheme,
            child: TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(screenWidth-30, 36),
              ),
              onPressed: widget._onPressed,
              child: Text(
                widget._text,
                style: Theme.of(context).textTheme.displaySmall,
              )
            ),
          )
        ]
      )
    );
  }
}