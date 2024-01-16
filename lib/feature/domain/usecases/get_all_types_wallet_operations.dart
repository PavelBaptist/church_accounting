import 'package:church_accounting/common/failure.dart';
import 'package:church_accounting/feature/domain/entities/type_wallet_operation.dart';
import 'package:church_accounting/feature/domain/repositories/type_wallet_operation_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllTypesWalletOperations {
  final TypeWalletOperationRepository typeWalletOperationRepository;

  GetAllTypesWalletOperations(this.typeWalletOperationRepository);
  Future<Either<Failure, List<TypeWalletOperationEntity>>> call() async {
    return await typeWalletOperationRepository.getAllTypesWalletOperations();
  }
}
