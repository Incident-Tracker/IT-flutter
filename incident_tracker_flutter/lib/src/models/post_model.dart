class PostModel {
  final String imageAddress;
  final String title;
  final String date;
  final String categoryName;
  final bool isPopular;
  final int likeCount;
  final int viewsCount;

  PostModel(
    this.imageAddress,
    this.title,
    this.date,
    this.categoryName,
    this.isPopular,
    this.likeCount,
    this.viewsCount,
  );
}
