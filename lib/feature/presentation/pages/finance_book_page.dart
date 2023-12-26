import 'package:flutter/material.dart';

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
}

class FinanceBookPage extends StatefulWidget {
  const FinanceBookPage({
    super.key,
  });

  @override
  State<FinanceBookPage> createState() => _FinanceBookPageState();
}

class _FinanceBookPageState extends State<FinanceBookPage> {
//Мок данные
  final List<MockData> mockData = [
    MockData(
      '1',
      23,
      DateTime(2023, 2, 23),
      14.00,
      'Молодежная касса',
      'Был на общениии, подошла сестра с церкви и подогнала соточку, так по братски',
      'Миша Глазачев',
      'Приход',
      'На еду',
      'ООО Кавказская молодежь',
    ),
    MockData(
      '2',
      24,
      DateTime(2023, 2, 24),
      8.50,
      'Кошелек 2',
      'Оплата счета',
      'Мария Петрова',
      'Расход',
      'Тип операции 2',
      'ООО "Поставщик услуг"',
    ),
    MockData(
      '2',
      24,
      DateTime(2023, 2, 24),
      8.50,
      'Кошелек 2',
      'Оплата счета счета счета счета счета счета',
      'Мария Петрова',
      'Приход',
      'Тип операции 2',
      'ООО "Поставщик услуг"',
    ),
    MockData(
      '2',
      24,
      DateTime(2023, 2, 24),
      8.50,
      'Кошелек 2',
      'Оплата счета',
      'Мария Петрова',
      'Расход',
      'Тип операции 2',
      'ООО "Поставщик услуг"',
    ),
    MockData(
      '2',
      24,
      DateTime(2023, 2, 24),
      8.50,
      'Кошелек 2',
      'Оплата счета',
      'Мария Петрова',
      'Приход',
      'Тип операции 2',
      'ООО "Поставщик услуг"',
    ),
  ];

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
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
            margin: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Color(0xFF212630),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        mockData[index].typeOperation.contains('Приход')
                            ? Icons.arrow_downward
                            : Icons.arrow_upward,
                        color: mockData[index].typeOperation.contains('Приход')
                            ? const Color(0xFF20C997)
                            : const Color(0xFFFF5D29),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            mockData[index].user,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Gothic A1',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        mockData[index].typeOperation.contains('Приход')
                            ? '+ ${mockData[index].sum} ₽'
                            : '- ${mockData[index].sum} ₽',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Gothic A1',
                          fontWeight: FontWeight.w500,
                          height: 0.08,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        mockData[index].wallet,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          color: Color(0xFF7D8696),
                          fontSize: 14,
                          fontFamily: 'Gothic A1',
                          fontWeight: FontWeight.w300,
                          height: 0.11,
                          letterSpacing: -0.21,
                        ),
                      ),
                      Text(
                        mockData[index].type,
                        style: TextStyle(
                          color:
                              mockData[index].typeOperation.contains('Приход')
                                  ? const Color(0xFF20C997)
                                  : const Color(0xFFFF5D29),
                          fontSize: 14,
                          fontFamily: 'Ghotic A1',
                          fontWeight: FontWeight.w300,
                          height: 0.11,
                          letterSpacing: -0.21,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Комментарий: ${mockData[index].comment}',
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                          maxLines: 2,
                          style: const TextStyle(
                            color: Color(0xFF7D8696),
                            fontSize: 14,
                            fontFamily: 'Ghotic A1',
                            fontWeight: FontWeight.w300,
                            height: 0.11,
                            letterSpacing: -0.21,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '${mockData[index].date.day}.${mockData[index].date.month}.${mockData[index].date.year}',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Color(0xFF7D8696),
                            fontSize: 14,
                            fontFamily: 'Gothic A1',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                            letterSpacing: -0.21,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Добавь другие виджеты, если необходимо
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
