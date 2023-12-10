import 'package:church_accounting/common/app_colors_theme.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class DropdownButtonDialogWidget extends StatelessWidget {
  final IconData iconDataButton;
  final GestureTapCallback onTapDoIncomeToWallet;
  final GestureTapCallback onTapDoExpenseFromWallet;
  final GestureTapCallback onTapDoTransferFromWallet;

  const DropdownButtonDialogWidget({
    Key? key,
    required this.iconDataButton,
    required this.onTapDoIncomeToWallet,
    required this.onTapDoExpenseFromWallet,
    required this.onTapDoTransferFromWallet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? myValue;

    return DropdownButton2(
      value: myValue,
      underline: const SizedBox(),
      barrierColor: Colors.black.withOpacity(0.5),
      onChanged: (value) {},
      customButton: Center(
        child: SizedBox(
          width: 57,
          height: 35,
          child: Icon(
            iconDataButton,
            color: AppColors.inactiveText,
          ),
        ),
      ),
      items: [
        DropdownMenuItem<String>(
          value: 'item',
          enabled: false,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 13,
                    width: 13,
                    child: CustomPaint(
                      painter: DrawTriangleShape(),
                      size: const Size(10, 10),
                    ),
                  ),
                  const SizedBox(width: 12),
                ],
              ),
              Expanded(
                child: InkWell(
                  onTap: onTapDoIncomeToWallet,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.secondaryBG,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Icon(
                                  Icons.add_card,
                                  color: AppColors.text,
                                  size: 20,
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Приход',
                                    style: TextStyle(
                                      color: AppColors.text,
                                      fontFamily: ('Gothic'),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(6),
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: onTapDoExpenseFromWallet,
                  child: Container(
                    color: AppColors.secondaryBG,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: AppColors.text,
                                  size: 20,
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Расход',
                                    style: TextStyle(
                                      color: AppColors.text,
                                      fontFamily: ('Gothic'),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(6),
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: onTapDoTransferFromWallet,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.secondaryBG,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Icon(
                                  Icons.sync_alt,
                                  color: AppColors.text,
                                  size: 20,
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Перевод',
                                    style: TextStyle(
                                      color: AppColors.text,
                                      fontFamily: ('Gothic'),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              )
                            ],
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(6),
                            onTap: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
      buttonStyleData: const ButtonStyleData(
        height: 20,
        width: 20,
        padding: EdgeInsets.all(8),
        elevation: 20,
        decoration: BoxDecoration(shape: BoxShape.circle),
      ),
      menuItemStyleData: const MenuItemStyleData(
        height: 150,
        padding: EdgeInsets.only(right: 10),
      ),
      //---
      dropdownStyleData: DropdownStyleData(
        offset: const Offset(0, 15),
        width: 148,
        elevation: 200,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}

class DrawTriangleShape extends CustomPainter {
  late Paint painter;

  DrawTriangleShape() {
    painter = Paint()
      ..color = AppColors.secondaryBG
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
