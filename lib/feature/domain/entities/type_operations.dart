import 'package:church_accounting/feature/domain/entities/organizations.dart';
import 'package:equatable/equatable.dart';

final class TypeOperationsEntity extends Equatable {
  final String id;
  final String name;
  final Type type;
  final OrganizationsEntity organization;

  TypeOperationsEntity(this.id, this.name, this.type, this.organization);

  @override
  List<Object?> get props => [];
}