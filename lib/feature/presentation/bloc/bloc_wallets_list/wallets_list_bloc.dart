import 'package:church_accounting/feature/domain/usecases/get_all_wallets.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_event.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletsListBloc extends Bloc<WalletsListEvent, WalletsListState> {
  final GetAllWallets getAllWallet;

  WalletsListBloc({required this.getAllWallet})
      : super(InitialWalletsListState()) {
    on<GetWalletsListEvent>(_getWalletsList);
  }

  void _getWalletsList(
      GetWalletsListEvent event, Emitter<WalletsListState> emit) async {
    final failuerOrWallet = await getAllWallet();
    failuerOrWallet.fold(
      (failuer) => emit(InitialWalletsListState(initialText: 'Ошибка =(')),
      (listWallet) => emit(LoadedWalletsListState(listWallet: listWallet)),
    );
  }
}
