import 'package:flutter/material.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/molecules/custom_text_input_field.dart';

class DoubleTextInputFieldRow extends StatefulWidget {

  const DoubleTextInputFieldRow({
    super.key,
    required this.subtitle1,
    required this.subtitle2,
  });

  final String subtitle1;
  final String subtitle2;

  @override
  State<StatefulWidget> createState() => _DoubleTextInputFieldRowState();
}

class _DoubleTextInputFieldRowState extends State<DoubleTextInputFieldRow> {

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final maxWidth = screenWidth/2-31;
    return Row(
      children: [
        CustomTextInputField(
          subtitle: widget.subtitle1,
          maxWidth: maxWidth,
        ),
        const SizedBox(width: 15.55,),
        CustomTextInputField(
          subtitle: widget.subtitle2,
          maxWidth: maxWidth,
        ),
      ],
    );
  }
}