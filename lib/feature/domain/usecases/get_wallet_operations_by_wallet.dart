import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/core/usecases/usecase_params.dart';
import 'package:church_accounting/feature/domain/entities/wallet_operation.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_operation_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetWalletOperationsByWallet
    extends UseCaseParams<List<WalletOpertionEntity>, WalletIdParams> {
  final WalletOperationRepository walletOperationRepository;

  GetWalletOperationsByWallet(this.walletOperationRepository);

  @override
  Future<Either<Failure, List<WalletOpertionEntity>>> call(
      WalletIdParams params) async {
    return await walletOperationRepository
        .getWalletOperationsByWallet(params.id);
  }
}

class WalletIdParams extends Equatable {
  final String id;

  const WalletIdParams({required this.id});

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
