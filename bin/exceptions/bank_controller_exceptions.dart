class SenderInvalidIdException implements Exception {
  static const String report = "SenderInvalidIdException";
  String idSender;
  SenderInvalidIdException({required this.idSender});

  @override
  String toString() {
    return "$report\nID sender: $idSender";
  }
}
class ReceiverInvalidIdException implements Exception {
  static const String report = "ReceiverInvalidIdException";
  String idReceiver;
  ReceiverInvalidIdException({required this.idReceiver});

  @override
  String toString() {
    return "$report\nID Receiver: $idReceiver";
  }
}
class SenderNotAuthenticatedException implements Exception {
  static const String report = "SenderNotAuthenticatedException";
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }
}
class ReceiverNotAuthenticatedException implements Exception {
  static const String report = "ReceiverNotAuthenticatedException";
  String idReceiver;
  ReceiverNotAuthenticatedException({required this.idReceiver});

  @override
  String toString() {
    return "$report\nID Receiver: $idReceiver";
  }
}
class SenderBalanceLowerThanAmountException implements Exception {
  static const String report = "SenderBalanceLowerThanAmountException";
  String idSender;
  double senderBalance;
  double amount;
  SenderBalanceLowerThanAmountException({required this.idSender, required this.senderBalance, required this.amount});

  @override
  String toString() {
    return "$report\nID Sender: $idSender\nSender Balance: $senderBalance\nAmount: $amount";
  }
}
