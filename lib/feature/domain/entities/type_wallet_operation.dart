import 'package:church_accounting/feature/domain/entities/organization.dart';
import 'package:church_accounting/feature/domain/entities/enums/type_operation.dart';
import 'package:equatable/equatable.dart';

/// Вид финансовой операции.
/// [id] - идентификатор операции.
/// [name] - название статьи доходов/расходов.
/// [type] - тип операции приход/расход.
/// [organization] - идентификатор организации.

class TypeWalletOperationEntity extends Equatable {
  final String id;
  final String name;
  final TypeOperation type;
  final OrganizationEntity organization;

  const TypeWalletOperationEntity({
    required this.id,
    required this.name,
    required this.type,
    required this.organization,
  });

  @override
  List<Object?> get props => [id, name, type, organization];
}
