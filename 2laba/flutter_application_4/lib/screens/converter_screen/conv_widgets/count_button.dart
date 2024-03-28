import 'package:flutter/material.dart';

class DoubleAmountButton extends StatelessWidget {
  final void Function(double) onResultChanged;

  const DoubleAmountButton({super.key, required this.onResultChanged});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // final TextEditingController _amountController = TextEditingController();
        // final String? amountText = _amountController.text;

        // if (amountText != null && amountText.isNotEmpty) {
        //   final double amount = double.tryParse(amountText) ?? 0;
        //   final double doubledAmount = amount * 2;

        //   // Оновлення значення результату через передану функцію
        //   onResultChanged(doubledAmount);
        // } else {
        //   // Якщо введеної суми немає, передати значення за замовчуванням
        //   onResultChanged(0);
        // }
      },
      child: const Text('Double Amount'),
    );
  }
}
