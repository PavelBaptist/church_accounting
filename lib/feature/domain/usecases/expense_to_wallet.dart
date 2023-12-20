import 'dart:ffi';
import 'package:church_accounting/feature/domain/entities/organization.dart';
import 'package:church_accounting/feature/domain/entities/type_wallet_operation.dart';
import 'package:church_accounting/feature/domain/entities/user.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:church_accounting/feature/domain/repositories/wallet_operation_repository.dart';

class Expense {
  final WalletOperationRepository walletOperationRepository;
  Expense(this.walletOperationRepository);

  Future<void> call({
    required String id,
    required int number,
    required DateTime date,
    required Double sum,
    required WalletEntity wallet,
    required String comment,
    required UserEntity user,
    required TypeWalletOperationEntity typeOperationm,
    required Type type,
    required OrganizationEntity organization,
  }) async {
    await walletOperationRepository.updateBalance(
      id,
      number,
      date,
      sum,
      wallet,
      comment,
      user,
      typeOperationm,
      type,
      organization,
    );
  }
}
