import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/feature/domain/entities/wallet_operation.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_operation_repository.dart';
import 'package:dartz/dartz.dart';

class GetWalletOperationsByWallet {
  final WalletOperationRepository walletOperationRepository;

  GetWalletOperationsByWallet(this.walletOperationRepository);
  Future<Either<Failure, List<WalletOpertionEntity>>> call(String id) async {
    return await walletOperationRepository.getWalletOperationsByWallet(id);
  }
}
