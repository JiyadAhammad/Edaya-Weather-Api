import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
        body: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox();
          },
          itemBuilder: (BuildContext context, int index) {
            return Padding(
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
                    color: kwhite),
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
                  // onLongPress: () {
                  //   // showDialog(
                  //   //   context: context,
                  //   //   builder: (ctx) => const DeleteDialogWidget(),
                  //   // );
                  //   Get.defaultDialog();
                  // },
                  // leading: CircleAvatar(
                  //   backgroundImage: FileImage(
                  //     File(
                  //       stdobj.list[index].studentImage!,
                  //     ),
                  //   ),
                  //   radius: 30,
                  // ),
                  title: Text(
                    'Name' ' SecondName',
                    style: const TextStyle(color: kblackText),
                  ),
                  subtitle: Text(
                    'Email',
                    style: TextStyle(color: kgrey),
                  ),
                  trailing: const DeleteAlertWidget(),
                ),
              ),
            );
          },
        )
        // : ListView(
        //     children: <Widget>[
        //       Center(
        //         child: Lottie.asset(
        //           'asset/lottie/emptyfile.json',
        //         ),
        //       ),
        //       const Center(
        //         child: Text(
        //           'No Data Found!! 😟',
        //           style: TextStyle(
        //             color: kwhite,
        //             fontSize: 30,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ),
        //     ],
        //   );

        );
  }
}
