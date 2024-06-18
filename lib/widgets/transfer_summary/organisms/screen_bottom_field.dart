import 'package:flutter/material.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/molecules/checkbox_text_item.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/molecules/custom_elevated_button.dart';

class ScreenBottomField extends StatefulWidget {

  const ScreenBottomField({
    super.key,
    required this.checkBoxText,
    required this.isChecked,
    required  String buttonText,
    required void Function() onPressed,
    required final void Function(bool?) onChanged,
  }) : 
    _onPressed = onPressed,
    _onChanged = onChanged,
    _buttonText = buttonText;

  final String _buttonText;
  final bool isChecked;
  final void Function(bool?) _onChanged;
  final void Function() _onPressed;

  final String checkBoxText;

  @override
  State<StatefulWidget> createState() => _ScreenBottomFieldState();
}

class _ScreenBottomFieldState extends State<ScreenBottomField> {

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxTextItem(
          onChanged: widget._onChanged,
          text: widget.checkBoxText,
          isChecked: widget.isChecked,
        ),
        const SizedBox(height: 18,),
        CustomElevatedButton(
          text: widget._buttonText,
          onPressed: widget._onPressed,
        )
      ],
    );
  }
}