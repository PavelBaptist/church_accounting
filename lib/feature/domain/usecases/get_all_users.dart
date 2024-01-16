import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/feature/domain/entities/user.dart';
import 'package:church_accounting/feature/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllUsers {
  final UserRepository userRepository;

  GetAllUsers({required this.userRepository});

  Future<Either<Failure, List<UserEntity>>> call() async {
    return await userRepository.getAllUsers();
  }
}
