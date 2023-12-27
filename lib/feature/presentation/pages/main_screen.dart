import 'dart:convert';

import 'package:church_accounting/common/app_colors_theme.dart';
import 'package:church_accounting/feature/presentation/widgets/buttons/dropdown_button_dialog_widget.dart';
import 'package:church_accounting/feature/presentation/widgets/wallets_list_bottom_sheet.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;
  final _pageController = PageController();

  void onTapped(int index) {
    _currentIndex = index;
    _pageController.jumpToPage(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        controller: _pageController,
        children: [
          Test(),
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
          currentIndex: _currentIndex,
          items: [
            bottomNavigationBarItem(label: 'Контакты', iconData: Icons.home),
            bottomNavigationBarItem(
                label: 'Финансы', iconData: Icons.attach_money_rounded),
            bottomNavigationBarItem(label: 'Склад', iconData: Icons.people),
            bottomNavigationBarItem(
                label: 'Планирование', iconData: Icons.calendar_month),
          ],
          onTap: (index) {
            onTapped(index);
          },
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

class Test extends StatelessWidget {
  final dio = Dio();
  Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: getHttp,
        child: const Text('Показать'),
      ),
    );
  }

  void getHttp() async {
    String admin = 'Администратор';
    String password = '';

    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$admin:$password'));

    final response = await dio.get(
      'https://ceshops.ru:8443/ca_debug/hs/api/wallets',
      options: Options(
        headers: {
          'Authorization': basicAuth,
        },
      ),
    );
    print(response);
  }
}
