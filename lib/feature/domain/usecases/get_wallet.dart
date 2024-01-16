import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/feature/data/repositories/wallet_repository_impl.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:dartz/dartz.dart';

class GetWallet {
  // final WalletRepository walletRepository;
  final walletRepository = WalletRepositoryImpl();

  // GetWallet(this.walletRepository);

  Future<Either<Failure, WalletEntity>> call(String id) async {
    return await walletRepository.selectWallet(id);
  }
}
