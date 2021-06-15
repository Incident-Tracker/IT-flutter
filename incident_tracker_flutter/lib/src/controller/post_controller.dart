import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:incident_tracker_flutter/src/models/post_model.dart';

class PostController extends GetxController {
  final postBox = Hive.box('post');
  final postList = [
    PostModel(
        'https://images-ext-2.discordapp.net/external/x_15YPAFUjyyUiBfKrUfR3EkgjgI_m8XkUXEyByT8HI/https/pbs.twimg.com/profile_images/796031746961588224/OSSAvw9d_400x400.jpg',
        '친구를 만나느랴 444',
        '2021.04.04',
        '호두과자',
        '연애',
        false,
        44,
        444,
        '3'),
    PostModel(
      'https://images-ext-2.discordapp.net/external/_XTqz75W4xFXCFr3vTlAOCM2o9XlnjpApzU42wuRAVg/https/pds.joins.com/news/component/htmlphoto_mmdata/202006/26/59afbb36-7eb3-449b-a3e9-462861c19b74.jpg',
      '아이즈원 해체 반대',
      '2021.04.28',
      '호두과자',
      '연애',
      true,
      1121,
      1972,
      '2',
    ),
    PostModel(
      'https://t1.daumcdn.net/cfile/tistory/2663F43655798FBB31',
      '규카츠 먹고 싶어요',
      '2021.05.01',
      '호두과자',
      '연애',
      true,
      444444,
      19721120,
      '규카츠를 태어난지 1972년동안 먹지 못했습니다. 규카츠 사주세요 ㅜㅜ',
    )
  ].obs;

  PostController() {
    for (var i = 0; i < postBox.length; i++) {
      postList.add(postBox.getAt(i));
    }
  }

  List<PostModel> getLikeSortedList() {
    return List.of(postList)
      ..sort((a, b) => a.likeCount >= b.likeCount ? -1 : 1);
  }

  List<PostModel> getViewSortedList() {
    return List.of(postList)
      ..sort((a, b) => a.viewsCount >= b.viewsCount ? -1 : 1);
  }

  List<PostModel> getMixSortedList() {
    return List.of(postList)
      ..sort((a, b) =>
          a.viewsCount + a.likeCount * 10 >= b.viewsCount + b.likeCount * 10
              ? -1
              : 1);
  }

  void savePost(PostModel post) {
    postBox.add(post);
    postList.add(post);
  }
}
