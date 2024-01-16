import 'package:church_accounting/core/error/failure.dart';
import 'package:church_accounting/feature/domain/entities/organization.dart';
import 'package:church_accounting/feature/domain/repositories/organization_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllOrganizations {
  final OrganizationRepository organizationRepository;

  GetAllOrganizations(this.organizationRepository);
  Future<Either<Failure, List<OrganizationEntity>>> call() async {
    return await organizationRepository.getAllOrganizations();
  }
}
