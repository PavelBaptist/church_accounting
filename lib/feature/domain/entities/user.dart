import 'package:church_accounting/feature/domain/entities/organization.dart';
import 'package:church_accounting/feature/domain/entities/user_avatar.dart';
import 'package:equatable/equatable.dart';

/// Пользователи приложения.
/// [name] - имя пользователя.
/// [id] - идентификатор пользователя.
/// [imgAvatar] - ссылка на изображение пользователя.
/// [organization] - организация пользователя.

final class UserEntity extends Equatable {
  final String name;
  final String id;
  final UserAvatarEntity imgAvatar;
  final OrganizationEntity organization;

  const UserEntity(this.name, this.id, this.imgAvatar, this.organization);

  @override
  List<Object?> get props => [name, id, imgAvatar, organization];
}
