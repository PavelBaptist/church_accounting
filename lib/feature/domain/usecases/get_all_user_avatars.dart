import 'package:church_accounting/common/failure.dart';
import 'package:church_accounting/feature/domain/entities/user_avatar.dart';
import 'package:church_accounting/feature/domain/repositories/user_avatar_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllUsersAvatar {
  final UserAvatarRepository userAvatarRepository;

  GetAllUsersAvatar(this.userAvatarRepository);

  Future<Either<Failure, List<UserAvatarEntity>>> call() async {
    return await userAvatarRepository.getAllUsersAvatar();
  }
}
