import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:incident_tracker_flutter/src/controller/category_controller.dart';
import 'package:incident_tracker_flutter/src/controller/post_controller.dart';
import 'package:incident_tracker_flutter/src/controller/profile_controller.dart';
import 'package:incident_tracker_flutter/src/models/post_model.dart';
import 'package:incident_tracker_flutter/src/pages/mixin/small_category.dart';
import 'package:incident_tracker_flutter/src/widgets/topic_category.dart';
import 'package:intl/intl.dart';

class WritePostPage extends StatelessWidget with SmallCategory {
  final _categoryController = Get.put(CategoryController(), tag: 'write');
  final _postController = Get.find<PostController>();
  final _profileController = Get.find<ProfileController>();
  final _imagePath = ''.obs;
  final titleEditController = TextEditingController();
  final contentEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            buildClickableGetImage(),
            Expanded(child: buildOtherInputField()),
          ],
        ),
      ),
    );
  }

  GestureDetector buildClickableGetImage() {
    return GestureDetector(
      onTap: getImage,
      child: Obx(
        () => Container(
          width: Get.width,
          height: Get.height * 0.28,
          color: Colors.grey,
          child: _imagePath.value.isNotEmpty
              ? Image.file(File(_imagePath.value), fit: BoxFit.cover)
              : null,
        ),
      ),
    );
  }

  Future getImage() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _imagePath.value = pickedFile.path;
    }
  }

  Padding buildOtherInputField() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          buildTitleField(),
          buildSelectableCategories(),
          buildContentField(),
          buildEndButtons(),
        ],
      ),
    );
  }

  TextField buildTitleField() {
    return TextField(
      controller: titleEditController,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Padding buildSelectableCategories() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TopicCategory('write', isSkipped: true),
    );
  }

  Expanded buildContentField() {
    return Expanded(
      child: TextField(
        controller: contentEditController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '내용 입력',
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Row buildEndButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: writePost,
          child: buildSmallCategory('완료'),
        ),
        SizedBox(width: 8),
        GestureDetector(
          onTap: () => Get.back(),
          child: buildSmallUnColoredCategory('취소'),
        ),
      ],
    );
  }

  void writePost() {
    if (titleEditController.text.isNotEmpty &&
        contentEditController.text.isNotEmpty &&
        _imagePath.value.isNotEmpty) {
      var post = PostModel(
        _imagePath.value,
        titleEditController.text,
        DateFormat('yyyy.MM.dd').format(DateTime.now()),
        _profileController.name,
        _categoryController.getSkippedSelectedCategory(),
        true,
        0,
        0,
        contentEditController.text,
      );
      _postController.savePost(post);

      Get.back();
    } else {
      Get.snackbar('내용을 채워주세요!', '이미지, 제목, 내용이 제대로 입력되었는지 확인해주세요.');
    }
  }
}
