import 'package:church_accounting/core/platform/network_info.dart';
import 'package:church_accounting/feature/data/data_source.dart/operation_remote_data_source.dart';
import 'package:church_accounting/feature/data/data_source.dart/wallet_remote_data_source.dart';
import 'package:church_accounting/feature/data/repositories/operation_repository_impl.dart';
import 'package:church_accounting/feature/data/repositories/wallet_repository_impl.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_operation_repository.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_repository.dart';
import 'package:church_accounting/feature/domain/usecases/get_all_wallet_operations.dart';
import 'package:church_accounting/feature/domain/usecases/get_all_wallets.dart';
import 'package:church_accounting/feature/domain/usecases/get_wallet.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/operations_list_bloc.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => WalletsListBloc(getAllWallet: sl()),
  );
  sl.registerFactory(
    () => OperationsListBloc(getAllWalletOperations: sl()),
  );

  // UseCases
  sl.registerLazySingleton(() => GetAllWallets(walletRepository: sl()));
  sl.registerLazySingleton(() => GetWallet(walletRepository: sl()));
  sl.registerLazySingleton(
      () => GetAllWalletOperations(walletOperationRepository: sl()));

  // Repository
  sl.registerLazySingleton<WalletRepository>(
    () => WalletRepositoryImpl(
        remoteDataSource: WalletRemoteDataSourceImpl(dio: sl())),
  );
  sl.registerLazySingleton<WalletOperationRepository>(
    () => OperationRepositoryImpl(
        remoteDataSource: OperationRemoteDataSourceImpl(dio: sl()),
        networkInfo: sl()),
  );

  sl.registerLazySingleton<WalletRemoteDataSource>(
    () => WalletRemoteDataSourceImpl(dio: sl()),
  );
  sl.registerLazySingleton<OperationRemoteDataSource>(
    () => OperationRemoteDataSourceImpl(dio: sl()),
  );

  // Core
  sl.registerLazySingleton(() => NetworkInfoImpl(sl()));

  // External
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
