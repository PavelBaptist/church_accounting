import 'package:church_accounting/common/failure.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:dartz/dartz.dart';

abstract class WalletRepository {
  Future<Either<Failure, List<WalletEntity>>> getAllWallets();
  Future<Either<Failure, WalletEntity>> selectWallet(id);
  Future<Either<Failure, WalletEntity>> updateBalance(id, balance);
}
