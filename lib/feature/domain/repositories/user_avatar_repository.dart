import 'package:church_accounting/feature/domain/entities/user_avatar.dart';

abstract class UserAvatarRepository {
  Future<List<UserAvatarEntity>> getAllUsersAvatar();
}
