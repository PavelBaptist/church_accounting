import 'dart:convert';
import 'package:church_accounting/feature/data/models/wallet_operation_model.dart';
import 'package:dio/dio.dart';

abstract class OperationRemoteDataSource {
  Future<List<WalletOpertionModel>> getAllOperations();
  Future<List<WalletOpertionModel>> getAllOperationsByWallet(String id);
}

class OperationRemoteDataSourceImpl implements OperationRemoteDataSource {
  final Dio dio;

  OperationRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<WalletOpertionModel>> getAllOperations() =>
      _getListWalletsOperationsFromUrl(
          'https://ceshops.ru:8443/ca_debug/hs/api/wallet_operations');

// TODO: Добавить правильный параметр в url
  @override
  Future<WalletOpertionModel> getAllOperationsByWallet(String id) =>
      _getWalletFromUrl(
          'https://ceshops.ru:8443/ca_debug/hs/api/wallets?name=$id');

  Future<List<WalletOpertionModel>> _getListWalletsOperationsFromUrl(
      String url) async {
    String admin = 'Администратор';
    String password = '';

    String basicAuth = 'Basic ${base64Encode(utf8.encode('$admin:$password'))}';

    final response = await dio.get(
      'https://ceshops.ru:8443/ca_debug/hs/api/wallet_operations',
      options: Options(
        headers: {
          'Authorization': basicAuth,
        },
      ),
    );

    if (response.statusCode == 200) {
      final operations = response.data;

      return (operations as List)
          .map((operations) => WalletOpertionModel.fromJson(operations))
          .toList();
    } else {
      throw Exception();
    }
  }

  Future<WalletOpertionModel> _getWalletFromUrl(String url) async {
    String admin = 'Администратор';
    String password = '';

    String basicAuth = 'Basic ${base64Encode(utf8.encode('$admin:$password'))}';

    final response = await dio.get(
      url,
      options: Options(
        headers: {
          'Authorization': basicAuth,
        },
      ),
    );

    if (response.statusCode == 200) {
      final wallets = response.data;
      return WalletModel.fromJson(wallets);
    } else {
      throw Exception();
    }
  }
}
