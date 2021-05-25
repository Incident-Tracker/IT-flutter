import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:incident_tracker_flutter/src/controller/profile_controller.dart';
import 'package:incident_tracker_flutter/src/pages/mixin/small_category.dart';
import 'package:incident_tracker_flutter/src/widgets/incident_tacker_appbar.dart';

// ignore: must_be_immutable
class ProfileEditPage extends StatelessWidget with SmallCategory {
  final ProfileController _controller = Get.find();
  late var nameController;
  late var emailController;

  init() {
    nameController = TextEditingController(text: _controller.name);
    emailController = TextEditingController(text: _controller.name);
  }

  @override
  Widget build(BuildContext context) {
    init();

    return Scaffold(
      appBar: IncidentTrackerAppbar(),
      body: Obx(
        () => Stack(
          children: [
            GestureDetector(
              onTap: () {
                ImagePicker()
                    .getImage(source: ImageSource.gallery)
                    .then((value) {
                  _controller.background =
                      value?.path ?? _controller.background;
                });
              },
              child: Container(
                height: Get.height / 3.5,
                color: Colors.black,
                child: _controller.background.isNotEmpty
                    ? Image.file(
                        File(_controller.background),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
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
                        child: buildEditButton('저장'),
                      ),
                      GestureDetector(
                        onTap: () {
                          ImagePicker()
                              .getImage(source: ImageSource.gallery)
                              .then((value) {
                            _controller.profileImage =
                                value?.path ?? _controller.profileImage;
                          });
                        },
                        child: SizedBox(
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
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: buildEditButton('저장'),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: nameController,
                    style: TextStyle(color: Colors.black),
                  ),
                  TextField(
                    controller: emailController,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}