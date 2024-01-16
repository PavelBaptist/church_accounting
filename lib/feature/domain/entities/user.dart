import 'package:equatable/equatable.dart';

/// Пользователи приложения.
/// [name] - имя пользователя.
/// [id] - идентификатор пользователя.
/// [imgAvatar] - ссылка на изображение пользователя.

class UserEntity extends Equatable {
  final String name;
  final String id;

  const UserEntity({
    required this.name,
    required this.id,
  });

  @override
  List<Object?> get props => [name, id];
}
