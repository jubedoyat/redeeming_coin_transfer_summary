import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/atoms/text_field_subtitle.dart';

class CustomTextInputField extends StatefulWidget {

  const CustomTextInputField({
    super.key,
    required this.subtitle,
    this.maxWidth,
    this.controller,
    this.validator,
    this.inputFormatter,
    this.keyboardType,
    void Function(String)? onChanged,
  }) : _onChanged = onChanged;

  final String subtitle;
  final double? maxWidth;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputFormatter? inputFormatter;
  final TextInputType? keyboardType;
  final void Function(String)? _onChanged;

  @override
  State<StatefulWidget> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFieldSubtitle(
          text: widget.subtitle,
        ),
        const SizedBox(height: 6,),
        SizedBox(
          width: widget.maxWidth ?? screenWidth-45,
          height: 65,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              alignment: AlignmentDirectional.centerStart,
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    width: screenWidth-10,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.shadow
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: SizedBox(
                    width: widget.maxWidth ?? screenWidth-60,
                    child: TextFormField(
                      controller: widget.controller,
                      onChanged: widget._onChanged,
                      keyboardType: widget.keyboardType,
                      inputFormatters: [
                        widget.inputFormatter ?? FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]+'))
                      ],
                      decoration: const InputDecoration(
                        border: InputBorder.none
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                      validator: widget.validator,
                      cursorColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ],
    );
  }
}