import 'package:church_accounting/feature/domain/entities/wallet_operation.dart';

abstract class OperationsListState {}

class InitialOperationsListState extends OperationsListState {
  String initialText;

  InitialOperationsListState({this.initialText = 'Пусто'});
}

class LoadedOperationsListState extends OperationsListState {
  List<WalletOpertionEntity> listOperations;

  LoadedOperationsListState({required this.listOperations});
}
