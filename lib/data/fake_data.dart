import 'package:book_explore_and_sale_app/models/models.dart';

class FakeData {
  static List<PosterEntity> posters = [
    PosterEntity(
      id: 1,
      path: 'assets/images/images/poster_image_01.jpg',
      title: '''Find out the best books to read
when you don’t even know what 
to read!!!''',
    ),
    PosterEntity(
      id: 2,
      path: 'assets/images/images/poster_image_02.jpg',
      title: '''19 Works of Nonfiction to Read This Spring''',
    ),
    PosterEntity(
      id: 3,
      path: 'assets/images/images/poster_image_03.jpg',
      title: '''The Best Nonfiction Books of 2018 (So Far)
By looking at the real world around us,\n we're better equipped to understand ourselves.''',
    ),
    PosterEntity(
      id: 4,
      path: 'assets/images/images/poster_image_04.jpg',
      title:
          '''15 Fall Books You Should Read\n Based On Your Favorite TV Shows and Movies''',
    ),
  ];

  static List<String> categories = [
    'Arts',
    'Biography',
    'Romance',
    'Thriller',
    'Fiction',
    'Crime',
    'Movies',
    'Religious',
    'Philosophy',
    'History'
  ];
}
