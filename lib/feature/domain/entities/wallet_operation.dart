import 'dart:ffi';
import 'package:church_accounting/feature/domain/entities/organization.dart';
import 'package:church_accounting/feature/domain/entities/type_wallet_operation.dart';
import 'package:church_accounting/feature/domain/entities/user.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:equatable/equatable.dart';

///Финансовая операция.
/// [id] - идентификатор.
/// [number] - номер.
/// [date] - дата совершения.
/// [sum] - сумма.
/// [wallet] - кошелёк-владелец.
/// [comment] - комментарий.
/// [user] - пользователь-автор.
/// [typeOperation] - вид расхода.
/// [type] - тип приход/расход.
/// [organization] - ораганизация-владелец кошелька.

final class MockData extends Equatable {
  final String id;
  final int number;
  final DateTime date;
  final double sum;
  final WalletEntity wallet;
  final String comment;
  final UserEntity user;
  final TypeWalletOperationEntity typeOperation;
  final Type type;
  final OrganizationEntity organization;

  const MockData(
      this.id,
      this.number,
      this.date,
      this.sum,
      this.wallet,
      this.comment,
      this.user,
      this.typeOperation,
      this.type,
      this.organization);

  @override
  List<Object?> get props => [
        id,
        number,
        date,
        sum,
        wallet,
        comment,
        user,
        typeOperation,
        type,
        organization,
      ];
}
