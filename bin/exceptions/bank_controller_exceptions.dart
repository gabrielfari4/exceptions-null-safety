class SenderInvalidIdException implements Exception {
  String idSender;
  SenderInvalidIdException({required this.idSender});
}
class ReceiverInvalidIdException implements Exception {
  String idReceiver;
  ReceiverInvalidIdException({required this.idReceiver});
}
class SenderNotAuthenticatedException implements Exception {
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});
}
class SenderBalanceLowerThanAmountException implements Exception {
  String idSender;
  double senderBalance;
  double amount;
  SenderBalanceLowerThanAmountException({required this.idSender, required this.senderBalance, required this.amount});
}
