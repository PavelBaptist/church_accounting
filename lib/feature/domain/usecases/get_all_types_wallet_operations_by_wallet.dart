import 'package:church_accounting/common/failure.dart';
import 'package:church_accounting/feature/domain/entities/type_wallet_operation.dart';
import 'package:church_accounting/feature/domain/repositories/type_wallet_operation_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllTypesWalletOperationsByWallet {
  final TypeWalletOperationRepository typeWalletOperationRepository;

  GetAllTypesWalletOperationsByWallet(this.typeWalletOperationRepository);
  Future<Either<Failure, List<TypeWalletOperationEntity>>> call(
      String id) async {
    return await typeWalletOperationRepository
        .getTypesWalletOperationsByWallet(id);
  }
}
