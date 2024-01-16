import 'package:church_accounting/feature/domain/entities/wallet.dart';

abstract class WalletsListState {}

class InitialWalletsListState extends WalletsListState {
  String initialText;

  InitialWalletsListState({this.initialText = 'Пусто'});
}

class LoadedWalletsListState extends WalletsListState {
  List<WalletEntity> listWallet;

  LoadedWalletsListState({required this.listWallet});
}
