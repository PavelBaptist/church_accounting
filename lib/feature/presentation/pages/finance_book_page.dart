import 'package:flutter/material.dart';

class FinanceBookPage extends StatefulWidget {
  const FinanceBookPage({super.key});

  @override
  State<FinanceBookPage> createState() => _FinanceBookPageState();
}

class _FinanceBookPageState extends State<FinanceBookPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF212630),
      child: ListView.separated(
        itemCount: mockData.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: double.infinity,
            height: 145.55,
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Color(0xFF212630),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '$index',
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 1,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            color: const Color(0xFF333A47),
          );
        },
      ),
    );
  }
}

// Мок данные
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

  @override
  List<Object?> get props => [
        id,
        number,
        date,
        sum,
        wallet,
        comment,
        user,
        typeOperation,
        type,
        organization,
      ];
}

final List<MockData> mockData = [
  MockData(
    'text',
    23,
    DateTime(23, 2),
    14.00,
    'Кавказская молодежь',
    'text',
    'text',
    'text',
    'text',
    'text',
  ),
  MockData(
    'text',
    23,
    DateTime(23, 2),
    14.00,
    'Кавказская молодежь',
    'text',
    'text',
    'text',
    'text',
    'text',
  ),
  MockData(
    'text',
    23,
    DateTime(23, 2),
    14.00,
    'Кавказская молодежь',
    'text',
    'text',
    'text',
    'text',
    'text',
  ),
  MockData(
    'text',
    23,
    DateTime(23, 2),
    14.00,
    'Кавказская молодежь',
    'text',
    'text',
    'text',
    'text',
    'text',
  ),
  MockData(
    'text',
    23,
    DateTime(23, 2),
    14.00,
    'Кавказская молодежь',
    'text',
    'text',
    'text',
    'text',
    'text',
  ),
];
