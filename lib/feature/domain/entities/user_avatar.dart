import 'package:church_accounting/feature/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

/// Изображение пользователя.
/// [user] - идентификатор пользователя.
/// [attachment] - изображение формата BASE64.

final class UserAvatarEntity extends Equatable {
  final UserEntity user;
  final String attachment;

  const UserAvatarEntity(this.user, this.attachment);

  @override
  List<Object?> get props => [user, attachment];
}
