import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/core/usecases/usecase_params.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_repository.dart';
import 'package:dartz/dartz.dart';

class GetWallet implements UseCaseParams<WalletEntity, String> {
  final WalletRepository walletRepository;

  GetWallet({required this.walletRepository});

  @override
  Future<Either<Failure, WalletEntity>> call(String params) {
    return walletRepository.selectWallet(params);
  }
}
