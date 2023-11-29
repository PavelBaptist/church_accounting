import 'package:church_accounting/feature/domain/entities/users.dart';
import 'package:equatable/equatable.dart';

final class WalletsEntity extends Equatable {
  final String id;
  final String name;
  final double balance;
  final bool isActive;
  final List<UsersEntity> holder;
  final List<String> watchers;
  final String organization;

  WalletsEntity(this.id, this.name, this.balance, this.isActive, this.holder,
      this.watchers, this.organization);

  @override
  List<Object?> get props => [];
}
