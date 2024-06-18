import 'package:flutter/material.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/atoms/custom_text_field.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/atoms/page_title.dart';

class ScreenHeader extends StatelessWidget {

  const ScreenHeader({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PageTitle(text: title),
        const SizedBox(height: 15),
        CustomTextField(text: text),
      ],
    );
  }
}