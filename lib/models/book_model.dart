class BookEntity {
  final int id;
  final String poster;
  final String title;
  final String author;
  final String imageUrl;
  final String authorImageUrl;
  final double star;
  final num price;
  final int numberOfRead;

  BookEntity(
      {required this.id,
      required this.poster,
      required this.title,
      required this.author,
      required this.imageUrl,
      required this.authorImageUrl,
      required this.star,
      required this.price,
      required this.numberOfRead});
}
