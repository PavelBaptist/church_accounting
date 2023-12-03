import 'package:church_accounting/feature/domain/entities/organizations.dart';
import 'package:church_accounting/feature/domain/entities/user_avatar.dart';
import 'package:equatable/equatable.dart';

final class UsersEntity extends Equatable {
  final String name;
  final String id;
  final UserAvatarEntity imgAvatar;
  final OrganizationsEntity organization;

  UsersEntity(this.name, this.id, this.imgAvatar, this.organization);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
