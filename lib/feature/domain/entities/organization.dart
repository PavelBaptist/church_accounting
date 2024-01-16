import 'package:equatable/equatable.dart';

/// Организация-владелец кошелька
/// [name] - название организации
/// [id] - идентификатор организации

class OrganizationEntity extends Equatable {
  final String name;
  final String id;

  const OrganizationEntity({required this.name, required this.id});

  @override
  List<Object?> get props => [name, id];
}
