import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/profile_controller.dart';
import 'package:incident_tracker_flutter/src/pages/mixin/small_category.dart';
import 'package:incident_tracker_flutter/src/pages/profile_edit_page.dart';

class ProfilePage extends StatelessWidget with SmallCategory {
  final _controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          Container(
            height: Get.height / 3.5,
            color: Colors.black,
            child: _controller.background.isNotEmpty
                ? Image.file(
                    File(_controller.background),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: Get.height / 3.5 - 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Opacity(
                      opacity: 0,
                      child: buildEditButton('수정'),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: _controller.profileImage.isNotEmpty
                            ? Image.file(
                          File(_controller.profileImage),
                          fit: BoxFit.cover,
                        )
                            : Container(color: Colors.grey),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => ProfileEditPage()),
                      child: buildEditButton('수정'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  _controller.name,
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  _controller.email,
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
