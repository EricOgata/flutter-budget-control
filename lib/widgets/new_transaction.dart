import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addNewTransactionFunc;

  NewTransaction(this.addNewTransactionFunc);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
            ),
            FlatButton(
              child: Text('Add transaction'),
              onPressed: () {
                addNewTransactionFunc(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
