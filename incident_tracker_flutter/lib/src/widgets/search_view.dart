import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/search_post_controller.dart';
import 'package:incident_tracker_flutter/src/pages/search_result_page.dart';

class SearchView extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  final SearchPostController _searchPostController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 6, 16, 24),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(child: buildTextField()),
          buildSearchButton(context),
        ],
      ),
    );
  }

  Container buildSearchButton(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
      child: IconButton(
        color: Colors.white,
        icon: Icon(Icons.search),
        onPressed: toSearch,
      ),
    );
  }

  Padding buildTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        controller: _textEditingController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "검색어를 입력하세요",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontFamily: "NotoSansCJKkr",
            fontSize: 15,
          ),
        ),
        onSubmitted: (_) => toSearch(),
      ),
    );
  }

  void toSearch() {
    if (_textEditingController.text.isNotEmpty) {
      _searchPostController.searchWord = _textEditingController.text;
      Get.to(() => SearchResultPage());
      FocusScope.of(Get.context!).unfocus();
      _textEditingController.clear();
    }
  }
}
