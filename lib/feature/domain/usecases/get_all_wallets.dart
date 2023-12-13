import 'package:church_accounting/common/failure.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllWallets {
  final WalletRepository walletRepository;

  GetAllWallets(this.walletRepository);
  Future<Either<Failure, List<WalletEntity>>> call() async {
    return await walletRepository.getAllWallets();
  }
}
