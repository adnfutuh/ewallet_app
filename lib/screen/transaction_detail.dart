import 'package:ewallet_app/widgets/item_transaction.dart';
import 'package:ewallet_app/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 10),
          child: Row(
            children: [
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              const Text(
                'Riwayat Transaksi',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemTransaction(
                transaction: transactions[index],
              );
            },
            itemCount: transactions.length,
          ),
        ),
      ],
    );
  }
}
