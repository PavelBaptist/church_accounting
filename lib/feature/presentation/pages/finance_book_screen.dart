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
    return Stack(
      children: [
        Expanded(
          child: ListView.separated(
              padding: const EdgeInsets.only(top: 125),
              itemBuilder: (context, index) {
                return listFinances[index];
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: listFinances.length),
        ),
        Positioned(
          //TODO: - process tab cash register
          child: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 203, 202, 202),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Text("Подростковая кассa"),
          ),
        )
      ],
    );
  }
}
