import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color/colors.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.action,
    this.icon = Icons.add,
  });
  final String title;
  final Function() action;
  final IconData icon;

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
          onPressed: action,
          icon: Icon(icon),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
