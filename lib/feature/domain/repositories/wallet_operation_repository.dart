import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/feature/domain/entities/wallet_operation.dart';
import 'package:dartz/dartz.dart';

abstract class WalletOperationRepository {
  Future<Either<Failure, List<WalletOpertionEntity>>> getAllWalletOperations();
  Future<Either<Failure, List<WalletOpertionEntity>>>
      getWalletOperationsByWallet(String id);
  Future<Either<Failure, List<WalletOpertionEntity>>> updateBalance(id, number,
      date, sum, wallet, comment, user, typeOperationm, type, organization);
}
