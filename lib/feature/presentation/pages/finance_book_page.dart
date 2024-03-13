import 'package:church_accounting/common/app_colors_theme.dart';
import 'package:flutter/material.dart';

// TODO:
// Мок данные удалить и вместо них установить данные по операциям
final class MockData {
  final String id;
  final int number;
  final DateTime date;
  final double sum;
  final String wallet;
  final String comment;
  final String user;
  final String typeOperation;
  final String type;
  final String organization;

  const MockData(
      this.id,
      this.number,
      this.date,
      this.sum,
      this.wallet,
      this.comment,
      this.user,
      this.typeOperation,
      this.type,
      this.organization);
}

class FinanceBookPage extends StatefulWidget {
  const FinanceBookPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF212630),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: mockData.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
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
                    Icon(
                      mockData[index].typeOperation.contains('Приход')
                          ? Icons.arrow_downward
                          : Icons.arrow_upward,
                      color: mockData[index].typeOperation.contains('Приход')
                          ? AppColors.green
                          : AppColors.red,
                    ),
                    Expanded(
                      flex: 20,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          mockData[index].user,
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
                    Expanded(
                      flex: 11,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerRight,
                        child: Text(
                          mockData[index].typeOperation.contains('Приход')
                              ? '+ ${mockData[index].sum} ₽'
                              : '- ${mockData[index].sum} ₽',
                          style: TextStyle(
                            color: AppColors.text,
                            fontSize: 18,
                            fontFamily: 'Gothic A1',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
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
                          mockData[index].wallet,
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
                    Expanded(
                      flex: 14,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerRight,
                        child: Text(
                          mockData[index].type,
                          style: TextStyle(
                            color:
                                mockData[index].typeOperation.contains('Приход')
                                    ? AppColors.green
                                    : AppColors.red,
                            fontSize: 12,
                            fontFamily: 'Ghotic A1',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
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
                        'Комментарий: ${mockData[index].comment}',
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
                        '${mockData[index].date.day}.${mockData[index].date.month}.${mockData[index].date.year}',
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
      ),
    );
  }
}
