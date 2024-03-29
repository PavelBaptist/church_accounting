import 'package:church_accounting/common/app_colors_theme.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_bloc.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_event.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/wallets_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WalletListWidget extends StatelessWidget {
  const WalletListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<WalletsListBloc>().add(GetWalletsListEvent());
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundGray,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 7),
              child: Row(
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Список касс',
                        style: TextStyle(
                          color: AppColors.text,
                          fontFamily: ('Gothic'),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 27,
                    ),
                    color: AppColors.text.withOpacity(0.6),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Expanded(child: BlocBuilder<WalletsListBloc, WalletsListState>(
                builder: (context, state) {
              if (state is LoadedWalletsListState) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.listWallet.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 5),
                      child: IgnorePointer(
                        ignoring: !state.listWallet[index].isActive,
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 75,
                              decoration: BoxDecoration(
                                color: AppColors.listCellBG,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                alignment: Alignment.centerLeft,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 22,
                                                      height: 13,
                                                      color: AppColors.green,
                                                      padding:
                                                          const EdgeInsets.all(
                                                              1),
                                                      child: FittedBox(
                                                        child: Icon(
                                                          Icons.currency_ruble,
                                                          color: AppColors.text,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    Text(
                                                      state.listWallet[index]
                                                          .name,
                                                      style: TextStyle(
                                                        color: AppColors.text,
                                                        fontFamily: ('Gothic'),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            false
                                                // ignore: dead_code
                                                ? Container(
                                                    width: 12,
                                                    height: 12,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.active,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Icon(
                                                      Icons.check,
                                                      color:
                                                          AppColors.primaryBg,
                                                      size: 10,
                                                    ),
                                                  )
                                                : Container(
                                                    width: 12,
                                                    height: 12,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          AppColors.primaryBg,
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        color: AppColors
                                                            .inactiveText,
                                                        width: 1,
                                                      ),
                                                    ),
                                                    alignment: Alignment.center,
                                                    child: Icon(
                                                      Icons.check,
                                                      color:
                                                          AppColors.primaryBg,
                                                      size: 10,
                                                    ),
                                                  ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'Сумма: ${state.listWallet[index].balance}р',
                                                  style: TextStyle(
                                                    color:
                                                        AppColors.inactiveText,
                                                    fontFamily: ('Gothic'),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: FittedBox(
                                                alignment:
                                                    Alignment.centerRight,
                                                fit: BoxFit.scaleDown,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Icon(
                                                      Icons.person_2,
                                                      size: 15,
                                                      color: AppColors
                                                          .inactiveText,
                                                    ),
                                                    const SizedBox(width: 3),
                                                    Text(
                                                      state.listWallet[index]
                                                          .holder,
                                                      style: TextStyle(
                                                        color: AppColors
                                                            .inactiveText,
                                                        fontFamily: ('Gothic'),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(6),
                                      onTap: () {},
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            state.listWallet[index].isActive
                                ? const SizedBox()
                                : Container(
                                    width: double.infinity,
                                    height: 75,
                                    decoration: BoxDecoration(
                                      color: AppColors.listCellBG
                                          .withOpacity(0.75),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  )
                          ],
                        ),
                      ),
                    );
                  },
                );
              } else if (state is InitialWalletsListState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return const SizedBox();
              }
            })),
          ],
        ),
      ),
    );
  }
}
