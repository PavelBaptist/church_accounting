import 'package:church_accounting/feature/domain/entities/organization.dart';
import 'package:church_accounting/feature/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

/// Кошелек.
/// [id] - идентификатор.
/// [name] - название кошелька.
/// [balance] - текущий баланс.
/// [isActive] - активность кассы.
/// [holder] - ответственный кассы.
/// [watchers] - наблюдатели кассы.
/// [organization] - орагнизация-владелец.

final class WalletEntity extends Equatable {
  final String id;
  final String name;
  final double balance;
  final bool isActive;
  final UserEntity holder;
  final List<UserEntity> watchers;
  final OrganizationEntity organization;

  const WalletEntity(
    this.id,
    this.name,
    this.balance,
    this.isActive,
    this.holder,
    this.watchers,
    this.organization,
  );

  @override
  List<Object?> get props =>
      [id, name, balance, isActive, holder, watchers, organization];
}
