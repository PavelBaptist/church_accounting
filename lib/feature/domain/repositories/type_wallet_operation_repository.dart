import 'package:church_accounting/feature/domain/entities/type_wallet_operation.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';

abstract class TypesWalletOperationsRepository {
  Future<List<TypeWalletOperationEntity>> getAllTypesWalletOperations();
  Future<List<TypeWalletOperationEntity>> sortTypesWalletOperations(
      WalletEntity id);
}
