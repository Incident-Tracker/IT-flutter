import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class PostModel extends HiveObject {
  @HiveField(0)
  final String imageAddress;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final String writer;
  @HiveField(4)
  final String categoryName;
  @HiveField(5)
  final bool isPopular;
  @HiveField(6)
  int likeCount;
  @HiveField(7)
  int viewsCount;
  @HiveField(8)
  final String content;

  PostModel(
    this.imageAddress,
    this.title,
    this.date,
    this.writer,
    this.categoryName,
    this.isPopular,
    this.likeCount,
    this.viewsCount,
    this.content,
  );
}
