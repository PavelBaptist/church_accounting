import 'package:church_accounting/common/app_colors_theme.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_bloc.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_event.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_state.dart';
import 'package:church_accounting/feature/presentation/widgets/buttons/dropdown_button_dialog_widget.dart';
import 'package:church_accounting/feature/presentation/widgets/wallets_list_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WalletsListBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: InkWell(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                context: context,
                builder: (context) {
                  return const WalletListWidget();
                },
              );
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Все операции"),
                Icon(
                  Icons.arrow_drop_down,
                  size: 20,
                ),
              ],
            ),
          ),
          centerTitle: true,
          actions: [
            DropdownButtonDialogWidget(
              iconDataButton: Icons.add,
              onTapDoIncomeToWallet: () {},
              onTapDoExpenseFromWallet: () {},
              onTapDoTransferFromWallet: () {},
            )
          ],
        ),
        body: PageView(
          children: const [
            ListWalletWidget(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: AppColors.inactiveText,
                width: 0.1,
              ),
            ),
          ),
          height: 102,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 1,
            items: [
              bottomNavigationBarItem(label: 'Контакты', iconData: Icons.home),
              bottomNavigationBarItem(
                  label: 'Финансы', iconData: Icons.attach_money_rounded),
              bottomNavigationBarItem(label: 'Склад', iconData: Icons.people),
              bottomNavigationBarItem(
                  label: 'Планирование', iconData: Icons.calendar_month),
            ],
            onTap: (index) {},
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem({
    required String label,
    required IconData iconData,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 5.0, top: 5),
        child: Icon(iconData),
      ),
      label: label,
    );
  }
}

class ListWalletWidget extends StatelessWidget {
  const ListWalletWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletsListBloc, WalletsListState>(
      builder: (context, state) {
        if (state is LoadedWalletsListState) {
          final list = state.listWallet;
          return ListView.builder(
            itemCount: state.listWallet.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.blue),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(list[index].holder),
                      const SizedBox(height: 10),
                      Text(list[index].id),
                      const SizedBox(height: 10),
                      Text(list[index].name),
                      const SizedBox(height: 10),
                      Text(list[index].organization),
                      const SizedBox(height: 10),
                      Text('${list[index].balance}'),
                      const SizedBox(height: 10),
                      Text('${list[index].isActive}'),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          ...list[index].watchers.map(
                                (e) => Text(e),
                              ),
                        ],
                      ),
                    ]),
              );
            },
          );
        } else if (state is InitialWalletsListState) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(state.initialText),
                ElevatedButton(
                  onPressed: () {
                    context.read<WalletsListBloc>().add(GetWalletsListEvent());
                  },
                  child: const Text('Get Wallets!'),
                )
              ],
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
