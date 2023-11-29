import 'dart:ffi';
import 'package:church_accounting/feature/domain/entities/organizations.dart';
import 'package:church_accounting/feature/domain/entities/type_operations.dart';
import 'package:church_accounting/feature/domain/entities/user_avatar.dart';
import 'package:equatable/equatable.dart';

final class WalletOpertionsEntity extends Equatable {
  final String id;
  final int number;
  final DateTime date;
  final Double sum;
  final String wallet;
  final String comment;
  final UserAvatarEntity user;
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
