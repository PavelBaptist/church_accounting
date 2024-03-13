import 'dart:convert';
import 'package:church_accounting/feature/data/models/wallet_operation_model.dart';
import 'package:dio/dio.dart';

abstract class OperationRemoteDataSource {
  Future<List<WalletOpertionModel>> getAllOperations();
  Future<List<WalletOpertionModel>> getOperationsByWallet(String id);
}

class OperationRemoteDataSourceImpl implements OperationRemoteDataSource {
  final Dio dio;

  OperationRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<WalletOpertionModel>> getAllOperations() =>
      _getAllOperationsFromUrl(
          'https://ceshops.ru:8443/ca_debug/hs/api/wallet_operations');

// TODO: Добавить правильный параметр в url
  @override
  Future<List<WalletOpertionModel>> getOperationsByWallet(String id) =>
      _getOperationsByWalletFromUrl(
          'https://ceshops.ru:8443/ca_debug/hs/api/wallet_operations/$id');

  Future<List<WalletOpertionModel>> _getAllOperationsFromUrl(String url) async {
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
      final operations = response.data;

      return (operations as List)
          .map((operations) => WalletOpertionModel.fromJson(operations))
          .toList();
    } else {
      throw Exception();
    }
  }

  Future<List<WalletOpertionModel>> _getOperationsByWalletFromUrl(
      String url) async {
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
      final operations = response.data;

      return (operations as List)
          .map((operations) => WalletOpertionModel.fromJson(operations))
          .toList();
    } else {
      throw Exception();
    }
  }
}
