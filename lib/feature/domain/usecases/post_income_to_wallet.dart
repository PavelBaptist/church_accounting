import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_repository.dart';

class Income {
  final WalletRepository walletRepository;
  double balance;
  Income(this.walletRepository, this.balance);

  Future<void> call(String id, double sum) async {
    WalletEntity wallet =
        (await walletRepository.selectWallet(id)) as WalletEntity;
    balance = wallet.balance + sum;
    await walletRepository.updateBalance(id, balance);
  }
}
