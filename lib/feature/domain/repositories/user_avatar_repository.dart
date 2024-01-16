import 'package:church_accounting/common/failure.dart';
import 'package:church_accounting/feature/domain/entities/user_avatar.dart';
import 'package:dartz/dartz.dart';

abstract class UserAvatarRepository {
  Future<Either<Failure, List<UserAvatarEntity>>> getAllUsersAvatar();
}
