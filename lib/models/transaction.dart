class Transaction {
  final int id;
  final String to;
  final String amount;
  final String date;
  final String description;
  Transaction(
    this.id,
    this.to,
    this.amount,
    this.date,
    this.description,
  );
}

final List<Transaction> transactions = [
  Transaction(
      1, 'Shopee', '135.000', '1 Januari 2024 12:36', 'Nutrition Powder'),
  Transaction(
      2, 'Trapezius Gym', '120.000', '11 Januari 2024 14:12', 'Member Gym'),
  Transaction(3, 'Traveloka', '1.500.000', '3 Februari 2024 22:01', 'Hotel'),
  Transaction(
      4, 'Mobile Legend', '500.000', '12 Februari 2024 12:47', 'Top Up'),
  Transaction(5, 'Tokopedia', '450.000', '22 Februari 2024 07:10', 'Kereta'),
  Transaction(6, 'Tiket.com', '950.000', '3 Maret 2024 08:12', 'Pesawat'),
  Transaction(7, 'Shopee', '70.000', '5 Maret 2024 12:03', 'Buku'),
  Transaction(8, 'Lazada', '200.000', '10 Maret 2024 13:02', 'Mouse'),
  Transaction(9, 'Traveloka', '1.000.000', '18 Maret 2024 16:00', 'Pesawat'),
  Transaction(10, 'Flip', '300.000', '2 April 2024 14:08', 'Transfer'),
];
