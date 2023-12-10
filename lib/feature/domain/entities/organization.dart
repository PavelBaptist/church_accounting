import 'package:equatable/equatable.dart';

/// Организация-владелец кошелька
/// [name] - название организации
/// [id] - идентификатор организации 
final class OrganizationsEntity extends Equatable {
  final String name;
  final String id;

  OrganizationsEntity(this.name, this.id);

  @override
  List<Object?> get props => [];
}
