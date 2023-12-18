import 'package:church_accounting/feature/data/models/organization_model.dart';
import 'package:church_accounting/feature/data/models/type_wallet_operation_model.dart';
import 'package:church_accounting/feature/data/models/user_model.dart';
import 'package:church_accounting/feature/data/models/wallet_model.dart';
import 'package:church_accounting/feature/domain/entities/enums/type_operation.dart';
import 'package:church_accounting/feature/domain/entities/wallet_operation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_operation_model.g.dart';

@JsonSerializable()
class WalletOpertionModel extends WalletOpertionEntity {
  @JsonKey(name: 'wallet')
  final WalletModel walletModel;
  @JsonKey(name: 'user')
  final UserModel userModel;
  @JsonKey(name: 'typeOperation')
  final TypeWalletOperationModel typeWalletOperationModel;
  @JsonKey(name: 'organization')
  final OrganizationModel organizationModel;

  const WalletOpertionModel({
    required super.id,
    required super.number,
    required super.date,
    required super.sum,
    required super.comment,
    required super.type,
    required this.walletModel,
    required this.userModel,
    required this.typeWalletOperationModel,
    required this.organizationModel,
  }) : super(
          wallet: walletModel,
          user: userModel,
          typeOperation: typeWalletOperationModel,
          organization: organizationModel,
        );

  factory WalletOpertionModel.fromJson(Map<String, dynamic> json) =>
      _$WalletOpertionModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletOpertionModelToJson(this);
}
