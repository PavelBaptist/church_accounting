import 'package:church_accounting/core/error/exception.dart';
import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/core/platform/network_info.dart';
import 'package:church_accounting/feature/data/data_source.dart/operation_remote_data_source.dart';
import 'package:church_accounting/feature/data/models/wallet_operation_model.dart';
import 'package:church_accounting/feature/domain/entities/wallet_operation.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_operation_repository.dart';
import 'package:dartz/dartz.dart';

class OperationRepositoryImpl implements WalletOperationRepository {
  final OperationRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  OperationRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<WalletOpertionEntity>>>
      getAllWalletOperations() async {
    return _getAllOperations(() {
      return remoteDataSource.getAllOperations();
    });
  }

  @override
  Future<Either<Failure, List<WalletOpertionEntity>>>
      getWalletOperationsByWallet(String id) async {
    return _getOperationsByWallet(() {
      return remoteDataSource.getOperationsByWallet(id);
    });
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  //TODO: NetworkInfo реализовать в методе _getWallets
  Future<Either<Failure, List<WalletOpertionModel>>> _getAllOperations(
      Future<List<WalletOpertionModel>> Function() getAllOperations) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteOperations = await getAllOperations();
        return Right(remoteOperations);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<WalletOpertionModel>>> _getOperationsByWallet(
      Future<List<WalletOpertionModel>> Function()
          getOperationsByWallet) async {
    try {
      final remoteOperations = await getOperationsByWallet();
      return Right(remoteOperations);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}
