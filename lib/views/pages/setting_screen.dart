// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:bank_ui_design/constant/color.dart';
import 'package:bank_ui_design/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/custom_list_tile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SettingColor.bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Text(
              SettingText.accountSetting,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 29.r,
                backgroundColor: const Color(0xFF3417A8),
                child: const Text(
                  "OP",
                  style: TextStyle(color: DashboardColor.textColor),
                ),
              ),
              title: Text(
                "IH Sohag",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              subtitle: Text(
                "Nikli, Kishoreganj",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h),
                child: Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "GENERAL",
                          style: TextStyle(
                            color: Color(0xFF7E7E7E),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      CustomListTile(
                        title: "Bank Accounts",
                        onPressed: () {},
                      ),
                      CustomListTile(
                        title: "My Cards",
                        onPressed: () {},
                      ),
                      CustomListTile(
                        title: "Change Transaction Pin",
                        onPressed: () {},
                      ),
                      CustomListTile(
                        title: "Security",
                        onPressed: () {},
                      ),
                      CustomListTile(
                        title: "Documents",
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 15,
                        child: ListTile(
                          visualDensity:
                              VisualDensity(horizontal: 0, vertical: -4),
                          title: Text(
                            "PREFERENCES",
                            style: TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomListTile(
                        title: "Invite Your Friends",
                        onPressed: () {},
                      ),
                      CustomListTile(
                        title: "Report a Bug",
                        onPressed: () {},
                      ),
                      ListTile(
                        visualDensity:
                            VisualDensity(horizontal: 0, vertical: -4),
                        title: Text(
                          "NOTIFICATIONS",
                          style: TextStyle(
                            color: Color(0xFF7E7E7E),
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text("Get real-time updates"),
                        trailing: Switch(
                          value: _switchValue,
                          onChanged: (value) {
                            setState(
                              () {
                                _switchValue = value;
                              },
                            );
                          },
                          activeColor: Colors.white,
                          activeTrackColor: Color(0xFF46A02A),
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Color(0xFF46A02A),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
