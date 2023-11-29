import 'package:church_accounting/feature/domain/entities/user_avatar.dart';
import 'package:equatable/equatable.dart';

class UsersEntity extends Equatable {
  final String name;
  final String id;
  final UserAvatarEntity imgAvatar;
  final String organization;

  UsersEntity(this.name, this.id, this.imgAvatar, this.organization);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
