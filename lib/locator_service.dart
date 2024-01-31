import 'package:church_accounting/feature/data/data_source.dart/wallet_remote_data_source.dart';
import 'package:church_accounting/feature/data/repositories/wallet_repository_impl.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_repository.dart';
import 'package:church_accounting/feature/domain/usecases/get_all_wallets.dart';
import 'package:church_accounting/feature/domain/usecases/get_wallet.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => WalletsListBloc(getAllWallet: sl()),
  );

  // UseCases
  sl.registerLazySingleton(() => GetAllWallets(walletRepository: sl()));
  sl.registerLazySingleton(() => GetWallet(walletRepository: sl()));

  // Repository
  sl.registerLazySingleton<WalletRepository>(
    () => WalletRepositoryImpl(
        remoteDataSource: WalletRemoteDataSourceImpl(dio: sl())),
  );

  sl.registerLazySingleton<WalletRemoteDataSource>(
    () => WalletRemoteDataSourceImpl(dio: sl()),
  );

  // External
  sl.registerLazySingleton(() => Dio());
}
