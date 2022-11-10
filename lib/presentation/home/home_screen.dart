import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constant/color/colors.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // final StudentController studentController = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kblack,
        appBar: CustomAppBar(title: 'EDAYA'),
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
                ),
                child: ListTile(
                  onTap: () {
                    // Get.to(
                    //   transition: Transition.downToUp,
                    //   duration: const Duration(
                    //     milliseconds: 800,
                    //   ),
                    //   StudentDetail(
                    //     index: index,
                    //     dataList: studentController.list[index],
                    //     // controllerObj: studentController,
                    //     // data: studentController.list[index],
                    //   ),
                    // );
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
                    'Name',
                    style: const TextStyle(color: kwhite),
                  ),
                  subtitle: Text(
                    'Email',
                    style: TextStyle(color: kgrey),
                  ),
                  trailing: Wrap(
                    children: <Widget>[
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          // Get.to(
                          //   UpdateScreen(
                          //     index: index,
                          //   ),
                          // );
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: kgreen,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          // if (stdobj.list[index].id == null) {
                          //   return;
                          // }
                          // stdobj.deleteStudent(
                          //   stdobj.list[index].id!,
                          //   index,
                          // );
                          Get.defaultDialog(
                            title: 'Alert!!',
                            titleStyle: const TextStyle(
                              fontSize: 25,
                              color: kwhite,
                            ),
                            middleText: 'Do you want to Delete ',
                            middleTextStyle: const TextStyle(
                              fontSize: 20,
                              color: kwhite,
                            ),
                            backgroundColor: kblack,
                            textConfirm: 'Ok',
                            confirmTextColor: kblack,
                            onConfirm: () {
                              // stdobj.deleteStudent(
                              //   stdobj.list[index].id!,
                              //   index,
                              // );
                              Get.offAll(HomeScreen());
                              Get.snackbar(
                                'title',
                                'message',
                                titleText: const Center(
                                  child: Text(
                                    'Success',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: kred,
                                    ),
                                  ),
                                ),
                                messageText: const Center(
                                  child: Text(
                                    'Successfully Deleted',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: kwhite,
                                    ),
                                  ),
                                ),
                                snackPosition: SnackPosition.BOTTOM,
                                backgroundColor: kblack,
                                colorText: kwhite,
                                maxWidth: 250,
                                margin: const EdgeInsets.only(bottom: 15),
                              );
                            },
                            buttonColor: kwhite,
                            textCancel: 'Cancel',
                            cancelTextColor: kwhite,
                            onCancel: () {
                              Get.offAll(HomeScreen());
                            },
                            barrierDismissible: false,
                          );
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: kred,
                        ),
                      ),
                    ],
                  ),
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

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kblack,
      title: Text(
        title,
      ),
      centerTitle: true,
      actions: <Widget>[
        // IconButton(
        //   padding: EdgeInsets.zero,
        //   onPressed: () {
        //     // showSearch(
        //     //   context: context,
        //     //   delegate: Search(),
        //     // );
        //   },
        //   icon: const Icon(
        //     Icons.search,
        //   ),
        // ),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            // Get.to(
            //   () => const Formwidget(),
            //   transition: Transition.zoom,
            //   duration: const Duration(
            //     milliseconds: 1000,
            //   ),
            // );
          },
          icon: const Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
