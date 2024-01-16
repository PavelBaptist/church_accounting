import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/feature/domain/entities/organization.dart';
import 'package:dartz/dartz.dart';

abstract class OrganizationRepository {
  Future<Either<Failure, List<OrganizationEntity>>> getAllOrganizations();
}
