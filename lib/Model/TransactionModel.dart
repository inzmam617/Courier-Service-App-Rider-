class TransactionModel {
  final List<Transaction>? transactions;

  TransactionModel({this.transactions});

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> transactionList = json['message'];
    List<Transaction> transactions = transactionList.map((transaction) => Transaction.fromJson(transaction)).toList();

    return TransactionModel(transactions: transactions);
  }
}

class Transaction {
  final String? id;
  final String? rider;
  final int? amount;
  final String? method;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  Transaction({this.id, this.rider, this.amount, this.method, this.createdAt, this.updatedAt, this.v});

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['_id'],
      rider: json['rider'],
      amount: json['amount'],
      method: json['method'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      v: json['__v'],
    );
  }
}
