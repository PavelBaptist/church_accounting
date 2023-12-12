import 'package:church_accounting/feature/domain/entities/wallet.dart';

abstract class WalletRepository {
  Future<List<WalletEntity>> getAllWallets();
  Future<WalletEntity> selectWallet(String id);
}
