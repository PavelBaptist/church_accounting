import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/core/usecases/usecase.dart';
import 'package:church_accounting/feature/domain/entities/wallet_operation.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_operation_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllWalletOperations extends UseCase<List<WalletOpertionEntity>> {
  final WalletOperationRepository walletOperationRepository;

  GetAllWalletOperations(this.walletOperationRepository);
  @override
  Future<Either<Failure, List<WalletOpertionEntity>>> call() async {
    return await walletOperationRepository.getAllWalletOperations();
  }
}
