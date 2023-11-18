import 'package:flutter/material.dart';

class FinancesList extends StatelessWidget {
  final int money;
  final String cashRegisterName;
  final String article;
  final String comment;
  final int number;
  final String date;
  final bool isComing;

  const FinancesList(
      {super.key,
      required this.money,
      required this.cashRegisterName,
      required this.article,
      required this.comment,
      required this.number,
      required this.date,
      required this.isComing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 203, 202, 202),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color: isComing ? Colors.green.shade200 : Colors.red,
                width: 4)),
        height: 160,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    isComing ? "+$money" : "-$money",
                    style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                        fontSize: 30),
                    maxLines: 2,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          cashRegisterName,
                          style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        Text(
                          "Cтатья: $article",
                          style: const TextStyle(
                              overflow: TextOverflow.ellipsis, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Text(
                  "Комментарий: $comment",
                  style: const TextStyle(fontSize: 20),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "№$number",
                      style: const TextStyle(fontSize: 20),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      date,
                      style: const TextStyle(fontSize: 20),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    width: 33,
                    height: 33,
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
