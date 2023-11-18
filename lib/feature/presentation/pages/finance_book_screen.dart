import 'package:church_accounting/feature/presentation/widgets/finances_list_widget.dart';
import 'package:flutter/material.dart';

class FinanceBookPage extends StatelessWidget {
  final List<FinancesList> listFinances = [
    const FinancesList(
        isComing: false,
        money: 5000,
        cashRegisterName: "церковная касса",
        article: "на микроволоновку",
        comment: "купил микроволновку ...",
        number: 43225,
        date: "05.05.2009"),
    const FinancesList(
        isComing: false,
        money: 1000,
        cashRegisterName: "подростковая",
        article: "на еду",
        comment: "купил на подросткове...",
        number: 432345,
        date: "05.05.2023"),
    const FinancesList(
        isComing: true,
        money: 100000000000,
        cashRegisterName: "молодежная касса",
        article: "на еду",
        comment: "пожертвование на еду...",
        number: 123,
        date: "12.04.2024"),
  ];
  FinanceBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.only(top: 15),
        itemBuilder: (context, index) {
          return listFinances[index];
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: listFinances.length);
  }
}
