import 'package:flutter/material.dart';
import 'package:redeeming_coin_transfer_summary/theme/custom_theme.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/templates/redeeming_summary_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customTheme,
      home: const RedeemingSummaryScreen(),
    );
  }
}
