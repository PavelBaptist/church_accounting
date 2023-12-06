import 'package:equatable/equatable.dart';

/// Организация-владелец кошелька
/// [name] - название организации
/// [id] - идентификатор организации

final class OrganizationEntity extends Equatable {
  final String name;
  final String id;

  const OrganizationEntity(this.name, this.id);

  @override
  List<Object?> get props => [name, id];
}
