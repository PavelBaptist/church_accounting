import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/feature/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, List<UserEntity>>> getAllUsers();
}
