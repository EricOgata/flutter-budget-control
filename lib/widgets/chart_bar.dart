import 'package:flutter/material.dart';
import '../utils/number_format.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double amount;
  final double spendingPercentOfTotal;

  ChartBar({
    required this.label,
    required this.amount,
    required this.spendingPercentOfTotal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 20,
          child: FittedBox(
            child: Text(CustomNumberFormats.moneyFormat().format(amount)),
          ),
        ),
        SizedBox(height: 4),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spendingPercentOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}
