import 'package:flutter/material.dart';
import 'package:ewallet_app/models/transaction.dart';

class ItemTransaction extends StatelessWidget {
  final Transaction transaction;

  const ItemTransaction({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 88, 190, 230),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: 35,
              height: 35,
              child: Center(
                child: Text(
                  transaction.to
                      .split('')
                      .map((l) => l[0])
                      .take(1)
                      .toList()
                      .join(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3D538F),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: Text(
                    transaction.to,
                    style: const TextStyle(
                      color: Color(0xFF3D538F),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  transaction.date,
                  style: const TextStyle(
                    color: Color(0xFF3D538F),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                ),
                child: Text(
                  '-Rp ${transaction.amount}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 209, 87, 46),
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                transaction.description,
                style: const TextStyle(
                  color: Color(0xFF3D538F),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
