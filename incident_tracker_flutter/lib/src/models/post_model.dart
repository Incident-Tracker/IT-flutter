class PostModel {
  final String imageAddress;
  final String title;
  final String date;
  final String writer;
  final String categoryName;
  final bool isPopular;
  final int likeCount;
  final int viewsCount;
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
