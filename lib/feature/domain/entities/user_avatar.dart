import 'package:equatable/equatable.dart';

/// Изображение пользователя.
/// [user] - идентификатор пользователя.
/// [attachment] - изображение формата BASE64.
final class UserAvatarEntity extends Equatable {
  final String user;
  final String attachment;

  UserAvatarEntity(this.user, this.attachment);

  @override
  List<Object?> get props => throw UnimplementedError();
}
