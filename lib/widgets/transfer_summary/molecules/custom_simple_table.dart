import 'package:flutter/material.dart';

class CustomSimpleTable extends StatelessWidget {

  const CustomSimpleTable({
    super.key,
    required this.subtitle,
    required this.data,
  });

  final String subtitle;
  final Map<String, String> data;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyLarge
        ),
        const SizedBox(height: 8,),
        Table(
          children: List<TableRow>.from(data.entries.map((e) => TableRow(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Theme.of(context).colorScheme.shadow)
              )
            ),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                child: Text(
                  e.key,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                child: Text(
                  e.value,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.headlineMedium
                ),
              )
            ],
          ))),
        ),
      ],
    );
  }
}