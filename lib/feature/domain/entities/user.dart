import 'package:church_accounting/feature/domain/entities/organization.dart';
import 'package:equatable/equatable.dart';

/// Пользователи приложения.
/// [name] - имя пользователя.
/// [id] - идентификатор пользователя.
/// [imgAvatar] - ссылка на изображение пользователя.
/// [organization] - организация пользователя.

class UserEntity extends Equatable {
  final String name;
  final String id;
  final OrganizationEntity organization;

  const UserEntity({
    required this.name,
    required this.id,
    required this.organization,
  });

  @override
  List<Object?> get props => [name, id, organization];
}
