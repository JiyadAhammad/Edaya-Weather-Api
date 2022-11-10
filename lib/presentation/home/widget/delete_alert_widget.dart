import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../domain/user/user.dart';
import '../../../main.dart';
import '../../constant/color/colors.dart';
import '../home_screen.dart';

class DeleteAlertWidget extends StatelessWidget {
  const DeleteAlertWidget({
    super.key,
    required this.id,
    required this.index,
    required this.data,
  });
  final int? id;
  final int index;
  final data;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.defaultDialog(
          title: 'Alert!!',
          titleStyle: const TextStyle(
            fontSize: 25,
            color: kred,
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
            Get.back();
            userDb.delete(id);
            data.removeAt(index);
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
            Get.offAll(() => HomeScreen());
          },
          barrierDismissible: false,
        );
      },
      icon: const Icon(
        Icons.delete,
        color: kred,
      ),
    );
  }
}
