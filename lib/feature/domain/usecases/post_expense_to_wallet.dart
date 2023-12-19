import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_repository.dart';

class Expense {
  final WalletRepository walletRepository;
  double balance;
  Expense(this.walletRepository, this.balance);

  Future<void> call(String id, double sum) async {
    WalletEntity wallet =
        (await walletRepository.selectWallet(id)) as WalletEntity;
    if (wallet.balance >= sum) {
      balance = wallet.balance - sum;
      await walletRepository.updateBalance(id, balance);
    } else {
      // Обработка случая, когда на счете недостаточно средств для расхода
      print('no money');
    }
  }
}
