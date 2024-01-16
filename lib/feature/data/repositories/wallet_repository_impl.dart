import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/feature/data/data_source.dart/wallet_remote_data_source.dart';
import 'package:church_accounting/feature/data/models/wallet_model.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_repository.dart';
import 'package:dartz/dartz.dart';

class WalletRepositoryImpl implements WalletRepository {
  final remoteDataSource = WalletRemoteDataSourceImpl();
  // final PersonLocalDataSoutce localDataSoutce;
  // final NetworkInfo networkInfo;

  // WalletRepositoryImpl(
  //     {required this.remoteDataSource,
  //     required this.localDataSoutce,
  //     required this.networkInfo});

  @override
  Future<Either<Failure, List<WalletEntity>>> getAllWallets() {
    return _getListWallets(() {
      return remoteDataSource.getAllWallets();
    });
  }

  @override
  Future<Either<Failure, WalletEntity>> selectWallet(id) {
    return _getWallet(() {
      return remoteDataSource.selectWallet(id);
    });
  }

  //TODO: NetworkInfo реализовать в методе _getWallets
  Future<Either<Failure, List<WalletModel>>> _getListWallets(
      Future<List<WalletModel>> Function() getListWallets) async {
    try {
      final remoteWallet = await getListWallets();
      return Right(remoteWallet);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  Future<Either<Failure, WalletModel>> _getWallet(
      Future<WalletModel> Function() getWallet) async {
    try {
      final remoteWallet = await getWallet();
      return Right(remoteWallet);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}
