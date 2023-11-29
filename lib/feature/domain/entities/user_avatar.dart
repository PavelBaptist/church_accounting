import 'package:equatable/equatable.dart';

class UserAvatarEntity extends Equatable {
  final String user;
  final String attachment;

  UserAvatarEntity(this.user, this.attachment);

  @override
  List<Object?> get props => throw UnimplementedError();
}
