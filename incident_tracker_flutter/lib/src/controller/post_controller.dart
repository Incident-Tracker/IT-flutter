import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/post_model.dart';

class PostController extends GetxController {
  List<PostModel> postList = [
    PostModel(
        'https://images-ext-2.discordapp.net/external/x_15YPAFUjyyUiBfKrUfR3EkgjgI_m8XkUXEyByT8HI/https/pbs.twimg.com/profile_images/796031746961588224/OSSAvw9d_400x400.jpg',
        '친구를 만나느랴 444',
        '2021.04.04',
        '호두과자',
        '연애',
        false,
        44,
        444,
        '3'
    ),
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
      'https://cfd.tourtips.com/@cms_300/2018102906/gjfn8k/P1750130.jpg',
      '규카츠 먹고 싶어요',
      '2021.05.01',
      '호두과자',
      '연애',
      true,
      444444,
      19721121,
      '가나다라마바사아자차카타파하가나다라마바사아자차카타파하가나다라마바사아자차카타파하가나다라마바사아자차카타파하',
    )
  ];
}