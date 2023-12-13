import 'package:church_accounting/common/failure.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:church_accounting/feature/domain/entities/wallet_operation.dart';
import 'package:dartz/dartz.dart';

abstract class WalletOperationRepository {
  Future<Either<Failure, List<WalletOpertionEntity>>> getAllWalletsOperation();
  Future<Either<Failure, List<WalletOpertionEntity>>> getWalletsOperation(
      WalletEntity id);
}
