import 'package:church_accounting/feature/domain/entities/organization.dart';

abstract class OrganizationEntityRepository {
  Future<List<OrganizationEntity>> getAllOrganizations();
}
