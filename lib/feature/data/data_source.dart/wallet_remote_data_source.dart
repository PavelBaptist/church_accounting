import 'dart:convert';

import 'package:church_accounting/feature/data/models/wallet_model.dart';
import 'package:dio/dio.dart';

abstract class WalletRemoteDataSource {
  Future<List<WalletModel>> getAllWallets();
  Future<WalletModel> selectWallet(String id);
}

class WalletRemoteDataSourceImpl implements WalletRemoteDataSource {
  // final http.Client client;
  // TODO: добавить в конструктор
  final dio = Dio();

  // PersonRemoteDataSourceImpl({required this.client});

  @override
  Future<List<WalletModel>> getAllWallets() =>
      _getListWalletsFromUrl('https://ceshops.ru:8443/ca_debug/hs/api/wallets');

// TODO: Добавить правильный параметр в url
  @override
  Future<WalletModel> selectWallet(String id) => _getWalletFromUrl(
      'https://ceshops.ru:8443/ca_debug/hs/api/wallets?name=$id');

  Future<List<WalletModel>> _getListWalletsFromUrl(String url) async {
    String admin = 'Администратор';
    String password = '';

    String basicAuth = 'Basic ${base64Encode(utf8.encode('$admin:$password'))}';

    final response = await dio.get(
      'https://ceshops.ru:8443/ca_debug/hs/api/wallets',
      options: Options(
        headers: {
          'Authorization': basicAuth,
        },
      ),
    );

    if (response.statusCode == 200) {
      final wallets = response.data;

      return (wallets as List)
          .map((wallets) => WalletModel.fromJson(wallets))
          .toList();
    } else {
      throw Exception();
    }
  }

  Future<WalletModel> _getWalletFromUrl(String url) async {
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
