import 'package:church_accounting/common/failure.dart';
import 'package:church_accounting/feature/domain/entities/wallet_operation.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_operation_repository.dart';
import 'package:dartz/dartz.dart';

class GetWalletOperationsByWallet {
  final WalletOperationRepository walletOperationRepository;

  GetWalletOperationsByWallet(this.walletOperationRepository);
  Future<Either<Failure, List<WalletOpertionEntity>>> call(id) async {
    return await walletOperationRepository.getWalletsOperation(id);
  }
}
