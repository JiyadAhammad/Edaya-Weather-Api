import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lottie/lottie.dart';

import '../../domain/user/user.dart';
import '../../main.dart';
import '../constant/color/colors.dart';
import '../formlist/form_list.dart';
import '../weatherreport/weather_report.dart';
import '../widget/custom_app_bar.dart';
import 'widget/delete_alert_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // final StudentController studentController = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kwhite,
      appBar: CustomAppBar(
        title: 'EDAYA',
        action: () {
          Get.to(
            () => Formwidget(),
            transition: Transition.zoom,
            duration: const Duration(
              milliseconds: 1000,
            ),
          );
        },
      ),
      body: ValueListenableBuilder<Box<UserModel>>(
        valueListenable: userDb.listenable(),
        builder: (BuildContext ctx, Box<UserModel> userlist, Widget? _) {
          return userlist.length == 0
              ? ListView(
                  children: <Widget>[
                    Center(
                      child: Lottie.asset(
                        'asset/lottie/106964-shake-a-empty-box.json',
                      ),
                    ),
                    const Center(
                      child: Text(
                        'No Data Found!! 😟',
                        style: TextStyle(
                          color: kwhite,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              : ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: userlist.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    final UserModel? data = userlist.getAt(index);
                    return Dismissible(
                      key: Key(data.toString()),
                      direction: DismissDirection.endToStart,
                      onDismissed: (DismissDirection direction) {
                        userlist.delete(data.id);
                      },
                      background: Container(
                        color: Colors.red,
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Delete',
                            style: TextStyle(
                              color: kwhite,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 10.h,
                          right: 10.w,
                          left: 10.w,
                        ),
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(width: 3.0, color: kwhite),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: kwhite,
                          ),
                          child: ListTile(
                            onTap: () {
                              Get.to(
                                transition: Transition.downToUp,
                                duration: const Duration(
                                  milliseconds: 800,
                                ),
                                () => const WeatherReport(),
                              );
                            },
                            title: Text(
                              '${data!.firstName}' ' ${data.secondName}',
                              style: const TextStyle(color: kblackText),
                            ),
                            subtitle: Text(
                              '${data.email}',
                              style: const TextStyle(color: kgrey),
                            ),
                            trailing: DeleteAlertWidget(
                              id: data.id,
                              index: index,
                              data: data,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
