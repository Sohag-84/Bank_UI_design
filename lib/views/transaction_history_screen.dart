// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, unused_field

import 'package:bank_ui_design/constant/color.dart';
import 'package:bank_ui_design/constant/strings.dart';
import 'package:bank_ui_design/widgets/custom_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_transaction_list.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen>
    with TickerProviderStateMixin {
  final List<String> _account = [
    "Naira Account: N190,000",
    "Manish Account: N190,000",
    "Alex Account: N190,000"
  ];
  String selectedItem = "Naira Account: N190,000";

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: TransactionColor.appBarColor,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10.w, top: 40.h, right: 10.w),
                  child: Row(
                    children: [
                      CustomCircle(
                        icon: Icons.arrow_back_outlined,
                        radius: 20.r,
                        color: TransactionColor.iconColor,
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      Text(
                        TransactionScreenText.transactionHistory,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Container(
                    width: 237.h,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.green),
                    ),
                    child: Center(
                      child: DropdownButton(
                        focusColor: Colors.transparent,
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 30.h,
                        ),
                        items: _account.map(
                              (String dropDownStringItem) {
                            return DropdownMenuItem(
                              child: Text(dropDownStringItem),
                              value: dropDownStringItem,
                            );
                          },
                        ).toList(),
                        onChanged: (value) {
                          setState(
                                () {
                              selectedItem = value.toString();
                            },
                          );
                        },
                        value: selectedItem,
                      ),
                    ),
                  ),
                ),
                TabBar(
                  controller: _tabController,
                  labelColor: TransactionColor.labelColor,
                  unselectedLabelColor: TransactionColor.unselectedTabBarColor,
                  isScrollable: true,
                  indicatorColor: TransactionColor.indicatorColor,
                  tabs: const [
                    Tab(
                      text: TransactionScreenText.allTransaction,
                    ),
                    Tab(
                      text: TransactionScreenText.debits,
                    ),
                    Tab(
                      text: TransactionScreenText.credits,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            width: double.maxFinite,
            height: 450,
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    CustomTransactionList(
                      icon: Icons.arrow_back_outlined,
                      circleColor: ListTileColor.circleBgColor_1,
                      iconColor: ListTileColor.iconColor_1,
                      title: ListTileText.title_1,
                      subtitle: ListTileText.subtitle_1,
                      amount: '\$2,500',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTransactionList(
                      icon: Icons.arrow_back_outlined,
                      circleColor: ListTileColor.circleBgColor_1,
                      iconColor: ListTileColor.iconColor_1,
                      title: ListTileText.title_1,
                      subtitle: ListTileText.subtitle_1,
                      amount: '\$2,500',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTransactionList(
                      icon: Icons.arrow_forward_outlined,
                      circleColor: ListTileColor.circleBgColor_2,
                      iconColor: ListTileColor.iconColor_2,
                      title: ListTileText.title_2,
                      subtitle: ListTileText.subtitle_2,
                      amount: '\$3,500',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTransactionList(
                      icon: Icons.arrow_forward_outlined,
                      circleColor: ListTileColor.circleBgColor_1,
                      iconColor: ListTileColor.iconColor_1,
                      title: ListTileText.title_1,
                      subtitle: ListTileText.subtitle_1,
                      amount: '\$70,300',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomTransactionList(
                      icon: Icons.arrow_forward_outlined,
                      circleColor: ListTileColor.circleBgColor_2,
                      iconColor: ListTileColor.iconColor_2,
                      title: ListTileText.title_2,
                      subtitle: ListTileText.subtitle_2,
                      amount: '\$40,780',
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    'No data is found',
                  ),
                ),
                Center(
                  child: Text(
                    'No data is found',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
