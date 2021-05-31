import 'package:flutter/material.dart';

import 'new_transaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: "id1", title: "title 1", amount: 20.99, date: DateTime.now()),
    Transaction(
        id: "id2", title: "title 2", amount: 30.39, date: DateTime.now()),
    Transaction(
        id: "id1", title: "title 1", amount: 20.99, date: DateTime.now()),
    Transaction(
        id: "id2", title: "title 2", amount: 30.39, date: DateTime.now()),
    Transaction(
        id: "id1", title: "title 1", amount: 20.99, date: DateTime.now()),
    Transaction(
        id: "id2", title: "title 2", amount: 30.39, date: DateTime.now()),
    Transaction(
        id: "id1", title: "title 1", amount: 20.99, date: DateTime.now()),
    Transaction(
        id: "id2", title: "title 2", amount: 30.39, date: DateTime.now()),
    Transaction(
        id: "id1", title: "title 1", amount: 20.99, date: DateTime.now()),
    Transaction(
        id: "id2", title: "title 2", amount: 30.39, date: DateTime.now()),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
