import 'package:church_accounting/common/failure.dart';
import 'package:church_accounting/feature/domain/entities/type_wallet_operation.dart';
import 'package:dartz/dartz.dart';

abstract class TypeWalletOperationRepository {
  Future<Either<Failure, List<TypeWalletOperationEntity>>>
      getAllTypesWalletOperations();
  Future<Either<Failure, List<TypeWalletOperationEntity>>>
      getTypesWalletOperationsByWallet(String id);
}
