import 'package:church_accounting/feature/domain/entities/organization.dart';
import 'package:equatable/equatable.dart';

/// Вид финансовой операции.
/// [id] - идентификатор операции.
/// [name] - название статьи доходов/расходов.
/// [type] - тип операции приход/расход.
/// [organization] - идентификатор организации.
final class TypeOperationsEntity extends Equatable {
  final String id;
  final String name;
  final Type type;
  final OrganizationsEntity organization;

  TypeOperationsEntity(this.id, this.name, this.type, this.organization);

  @override
  List<Object?> get props => [];
}
