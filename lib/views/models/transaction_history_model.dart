class TransactionHistoryModel {
  TransactionHistoryModel({
    required this.title,
    required this.date,
    required this.amount,
    required this.isWithdrawal,
  });

  final String title, date, amount;
  final bool isWithdrawal;
}
