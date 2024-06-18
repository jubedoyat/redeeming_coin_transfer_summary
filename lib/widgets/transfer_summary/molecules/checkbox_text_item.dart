import 'package:flutter/material.dart';

class CheckboxTextItem extends StatefulWidget {

  const CheckboxTextItem({
    super.key,
    required  String text,
    required this.isChecked,
    required void Function(bool?) onChanged,
  }) : 
    _onChanged = onChanged,
    _text = text;

  final String _text;
  final bool isChecked;
  final void Function(bool?) _onChanged;

  @override
  State<StatefulWidget> createState() => _CheckboxTextItemState();
}

class _CheckboxTextItemState extends State<CheckboxTextItem> {

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CheckboxTheme(
          data: CheckboxThemeData(
            side: BorderSide(color: Theme.of(context).colorScheme.onPrimaryContainer),
          ),
          child: Checkbox(
            value: widget.isChecked,
            onChanged: widget._onChanged,
            checkColor: Colors.white,
            activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        Text(
          widget._text,
          style: Theme.of(context).textTheme.displaySmall,
        )
      ],
    );
  }
}