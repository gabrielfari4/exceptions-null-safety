import 'dart:io';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  //Account accountTest = Account(name: "A", balance: -200, isAuthenticated: true);
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
      idSender: "Kako", idReceiver: "Ricarth", amount: 750);
      // Observando resultado
      if (result) {
        print("Transação efetuada com sucesso!");
      }
  } on SenderInvalidIdException catch (e) {
    print(e);
    print("O ID '${e.idSender}' do remetente não é um ID válido.");
  } on ReceiverInvalidIdException catch (e) {
    print(e);
    print("O ID '${e.idReceiver}' do recebedor não é um ID válido.");
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("O ID '${e.idSender}' do remetente não está autenticado.");
  } on ReceiverNotAuthenticatedException catch (e) {
    print(e);
    print("O ID '${e.idReceiver}' do recebedor não está autenticado.");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print("O saldo da conta do remetente '${e.idSender}' não é suficiente para realizar a operação. O valor da operação é R\$${e.amount} e o saldo em conta é de R\$${e.senderBalance}.");
  } on Exception {
    print("Algo deu errado!");
  }

}


