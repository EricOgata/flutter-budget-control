import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTransactionFunc;

  NewTransaction(this.addNewTransactionFunc);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitForm() {
    final enteredTitle = titleController.text;
    final entederValue = double.parse(amountController.text);

    if (enteredTitle.isEmpty || entederValue < 0) return;

    widget.addNewTransactionFunc(
      enteredTitle,
      entederValue,
    );

    Navigator.of(context).pop();
  }

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
              onSubmitted: (_) => submitForm(),
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitForm(),
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
            ),
            FlatButton(
              child: Text('Add transaction'),
              onPressed: submitForm,
              textColor: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
