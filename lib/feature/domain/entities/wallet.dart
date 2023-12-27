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

class WalletEntity extends Equatable {
  final String id;
  final String name;
  final double balance;
  final bool isActive;
  final String holder;
  final List<String> watchers;
  final String organization;

  const WalletEntity({
    required this.id,
    required this.name,
    required this.balance,
    required this.isActive,
    required this.holder,
    required this.watchers,
    required this.organization,
  });

  @override
  List<Object?> get props =>
      [id, name, balance, isActive, holder, watchers, organization];
}
