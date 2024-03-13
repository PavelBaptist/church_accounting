import 'package:church_accounting/feature/domain/usecases/get_all_wallet_operations.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/operations_list_event.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/operations_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OperationsListBloc
    extends Bloc<OperationsListEvent, OperationsListState> {
  final GetAllWalletOperations getAllWalletOperations;

  OperationsListBloc({required this.getAllWalletOperations})
      : super(InitialOperationsListState()) {
    on<GetOperationsListEvent>(_getOperationsList);
  }

  void _getOperationsList(
      GetOperationsListEvent event, Emitter<OperationsListState> emit) async {
    final failuerOrOperations = await getAllWalletOperations();
    failuerOrOperations.fold(
      (failuer) => emit(InitialOperationsListState(initialText: 'Ошибка =(')),
      (listOperations) =>
          emit(LoadedOperationsListState(listOperations: listOperations)),
    );
  }
}
