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
    if (await networkInfo.isConnected) {
      try {
        final remoteOperations = await remoteDataSource.getAllOperations();
        return Right(remoteOperations);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<WalletOpertionEntity>>> getOperationsByWallet(
      String id) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteOperations = await remoteDataSource.getAllOperations();
        return Right(remoteOperations);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }

  //TODO: NetworkInfo реализовать в методе _getWallets
  Future<Either<Failure, List<WalletOpertionModel>>> _getListWallets(
      Future<List<WalletOpertionModel>> Function() getListWallets) async {
    try {
      final remoteWallet = await getListWallets();
      return Right(remoteWallet);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, List<WalletOpertionModel>>> _getWallet(
      Future<WalletModel> Function() getWallet) async {
    try {
      final remoteWallet = await getWallet();
      return Right(remoteWallet);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<WalletOpertionEntity>>>
      getWalletOperationsByWallet(String id) {
    // TODO: implement getWalletOperationsByWallet
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<WalletOpertionEntity>>> updateBalance(id, number,
      date, sum, wallet, comment, user, typeOperationm, type, organization) {
    // TODO: implement updateBalance
    throw UnimplementedError();
  }
}
