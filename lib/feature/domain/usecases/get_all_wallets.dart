import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/core/usecases/usecase.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllWallets implements UseCase<List<WalletEntity>> {
  final WalletRepository walletRepository;

  GetAllWallets({required this.walletRepository});

  @override
  Future<Either<Failure, List<WalletEntity>>> call() async {
    return await walletRepository.getAllWallets();
  }
}
