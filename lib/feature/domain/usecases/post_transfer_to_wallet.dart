import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_repository.dart';

class Transfer {
  final WalletRepository walletRepository;
  double senderBalance;
  double recipientBalance;

  Transfer(this.walletRepository, this.senderBalance, this.recipientBalance);

  Future<void> call(String senderId, String recipientId, double sum) async {
    // Получение информации о кошельках отправителя и получателя
    WalletEntity senderWallet =
        await walletRepository.selectWallet(senderId) as WalletEntity;
    WalletEntity recipientWallet =
        await walletRepository.selectWallet(recipientId) as WalletEntity;

    // Проверка наличия достаточных средств у отправителя
    if (senderWallet.balance >= sum) {
      // Вычитание суммы из баланса отправителя и прибавление к балансу получателя
      senderBalance = senderWallet.balance - sum;
      recipientBalance = recipientWallet.balance + sum;

      // Обновление балансов в репозитории
      await walletRepository.updateBalance(senderId, senderBalance);
      await walletRepository.updateBalance(recipientId, recipientBalance);
    } else {
      // Обработка случая, когда у отправителя недостаточно средств
      print('no money');
    }
  }
}
