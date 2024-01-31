import 'package:church_accounting/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCaseParams<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
