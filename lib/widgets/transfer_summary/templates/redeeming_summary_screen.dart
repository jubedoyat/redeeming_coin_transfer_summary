import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/molecules/custom_simple_table.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/molecules/custom_text_input_field.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/organisms/double_text_input_field_row.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/organisms/screen_bottom_field.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/organisms/screen_header.dart';
import 'package:redeeming_coin_transfer_summary/widgets/transfer_summary/utils/currency_text_input_formater.dart';

class RedeemingSummaryScreen extends ConsumerStatefulWidget {
  const RedeemingSummaryScreen({super.key});

  static const route = '/redeeming-summary-screen';
  
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RedeemingSummaryScreenState();
}

class _RedeemingSummaryScreenState extends ConsumerState<RedeemingSummaryScreen> {

  String ammount = '0';
  bool isChecked = false;

  final _ammountController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        primary: false,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ScreenHeader(
                title: 'Transfer Summary',
                text: 'Confirm the details of the transaction and finalize the redemption'
              ),
              const SizedBox(height: 40,),
              CustomTextInputField(
                subtitle: 'Amount of Redeem',
                controller: _ammountController,
                keyboardType: TextInputType.number,
                inputFormatter: FilteringTextInputFormatter.digitsOnly,
                onChanged: (value) {
                  setState(() {
                    _ammountController.text = formatPrice(int.parse(value));
                    ammount = value;
                  });
                },
              ),
              const SizedBox(height: 20,),
              const DoubleTextInputFieldRow(
                subtitle1: 'Bank Name',
                subtitle2: 'Account\'s Holder Name',
              ),
              const SizedBox(height: 20,),
              const CustomTextInputField(subtitle: 'Account Number'),
              const SizedBox(height: 30,),
              CustomSimpleTable(subtitle: 'Digital Receipt', data: {
                'Date':'${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}',
                'Time': DateTime.now().minute > 9 ? '${DateTime.now().hour}:${DateTime.now().minute}' :
                                                    '${DateTime.now().hour}:0${DateTime.now().minute}',
                'Transaction ID':'TID3872XG9',
                'Amount':formatPriceWithFloatingPoint(int.parse(ammount)),
                'Destination Account':'1234567890123456'
              }),
              const SizedBox(height: 30,),
              ScreenBottomField(
                checkBoxText: 'Email a digital receipt to me',
                buttonText: 'Confirm',
                isChecked: isChecked,
                onPressed: () {},
                onChanged: (value) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}