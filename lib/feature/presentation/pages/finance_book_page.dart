import 'package:church_accounting/common/app_colors_theme.dart';
import 'package:church_accounting/feature/domain/usecases/income_to_wallet.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/operations_list_bloc.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/operations_list_event.dart';
import 'package:church_accounting/feature/presentation/bloc/bloc_wallets_list/operations_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum TypeOperation { income, expense }

class FinanceBookPage extends StatelessWidget {
  const FinanceBookPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<OperationsListBloc>().add(GetOperationsListEvent());
    return Container(
        color: const Color(0xFF212630),
        child: BlocBuilder<OperationsListBloc, OperationsListState>(
            builder: (context, state) {
          if (state is LoadedOperationsListState) {
            return ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: state.listOperations.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                  decoration: BoxDecoration(
                    color: AppColors.primaryBg,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Icon(
                          //   state.listOperations[index].typeOperation ==
                          //           TypeOperation.expense
                          //       ? Icons.arrow_downward
                          //       : Icons.arrow_upward,
                          //   color: state.listOperations[index].typeOperation ==
                          //           TypeOperation.income
                          //       ? AppColors.green
                          //       : AppColors.red,
                          // ),
                          Expanded(
                            flex: 20,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                state.listOperations[index].user as String,
                                style: TextStyle(
                                  color: AppColors.text,
                                  fontSize: 16,
                                  fontFamily: 'Gothic A1',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          // Expanded(
                          //   flex: 11,
                          //   child: FittedBox(
                          //     fit: BoxFit.scaleDown,
                          //     alignment: Alignment.centerRight,
                          //     child: Text(
                          //       state.listOperations[index].typeOperation ==
                          //               TypeOperation.income
                          //           ? '+ ${state.listOperations[index].sum} ₽'
                          //           : '- ${state.listOperations[index].sum} ₽',
                          //       style: TextStyle(
                          //         color: AppColors.text,
                          //         fontSize: 18,
                          //         fontFamily: 'Gothic A1',
                          //         fontWeight: FontWeight.w600,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                        width: double.infinity,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 28,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                state.listOperations[index].wallet as String,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: AppColors.inactiveText,
                                  fontSize: 14,
                                  fontFamily: 'Gothic A1',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          // Expanded(
                          //   flex: 14,
                          //   child: FittedBox(
                          //     fit: BoxFit.scaleDown,
                          //     alignment: Alignment.centerRight,
                          //     child: Text(
                          //       state.listOperations[index].typeOperation
                          //           as String,
                          //       style: TextStyle(
                          //         color: state.listOperations[index]
                          //                     .typeOperation ==
                          //                 TypeOperation.income
                          //             ? AppColors.green
                          //             : AppColors.red,
                          //         fontSize: 12,
                          //         fontFamily: 'Ghotic A1',
                          //         fontWeight: FontWeight.w400,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                        width: double.infinity,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 28,
                            child: Text(
                              'Комментарий: ${state.listOperations[index].comment}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                color: AppColors.inactiveText,
                                fontSize: 12,
                                fontFamily: 'Ghotic A1',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 14,
                            child: Text(
                              '${state.listOperations[index].date.day}.${state.listOperations[index].date.month}.${state.listOperations[index].date.year}',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: AppColors.inactiveText,
                                fontSize: 12,
                                fontFamily: 'Gothic A1',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  height: 0.5,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  color: AppColors.inactiveText.withOpacity(0.5),
                );
              },
            );
          } else if (state is InitialOperationsListState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const SizedBox();
          }
        }));
  }
}
