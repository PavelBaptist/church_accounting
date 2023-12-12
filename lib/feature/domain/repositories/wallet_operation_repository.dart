import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:church_accounting/feature/domain/entities/wallet_operation.dart';

abstract class WalletOperationRepository {
  List<WalletOpertionEntity> getAllWalletsOperation();
  List<WalletOpertionEntity> sortWalletsOperation(WalletEntity id);
}
