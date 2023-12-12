import 'package:church_accounting/feature/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getAllUsers();
}
