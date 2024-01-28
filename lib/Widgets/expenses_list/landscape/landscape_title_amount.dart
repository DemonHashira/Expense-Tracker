import 'package:flutter/material.dart';

class LandscapeTitleAount extends StatelessWidget {
  const LandscapeTitleAount(this._titleController, this._amountController,
      {super.key});

  final TextEditingController _titleController;
  final TextEditingController _amountController;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text(
                'Title',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixText: '\$ ',
              label:
                  Text('Amount', style: Theme.of(context).textTheme.titleSmall),
            ),
          ),
        ),
      ],
    );
  }
}
