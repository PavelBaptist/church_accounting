import 'dart:ffi';
import 'package:church_accounting/feature/domain/entities/organizations.dart';
import 'package:church_accounting/feature/domain/entities/type_operations.dart';
import 'package:church_accounting/feature/domain/entities/users.dart';
import 'package:church_accounting/feature/domain/entities/wallets.dart';
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
final class WalletOpertionsEntity extends Equatable {
  final String id;
  final int number;
  final DateTime date;
  final Double sum;
  final WalletsEntity wallet;
  final String comment;
  final UsersEntity user;
  final TypeOperationsEntity typeOperation;
  final Type type;
  final OrganizationsEntity organization;

  WalletOpertionsEntity(
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
  List<Object?> get props => [];
}

enum Type { INCOME, EXPENSE }
