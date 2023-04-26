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
        path:
            'https://metro.co.uk/wp-content/uploads/2021/12/PRC_215534003.jpg?quality=90&strip=all&w=1200&h=630&crop=1'),
    PosterEntity(
      id: 3,
      path:
          'https://elifnotes.com/wp-content/uploads/2021/12/22-of-the-best-books-of-all-time-you-must-read.webp',
    ),
    PosterEntity(
      id: 4,
      path:
          'https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1500w,f_auto,q_auto:best/newscms/2022_48/1943520/most-anticipated-books-2023-use-2x1-jp-221127.jpg',
    )
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

  static List<BookEntity> booksCategoryList = [
    BookEntity(
        id: 1,
        poster: 'https://m.media-amazon.com/images/I/81L2TrpKNJL.jpg',
        title: 'The Story of Marie Curie',
        author: 'Susan R Katy',
        imageUrl:
            'https://m.media-amazon.com/images/P/1647391121.01._SCLZZZZZZZ_SX500_.jpg',
        authorImageUrl:
            'https://m.media-amazon.com/images/S/amzn-author-media-prod/8buq5ld6qrn1s8gnbi90e4ktci._SX253_CR0%2C0%2C253%2C253_.jpg',
        star: 4.3,
        price: 13.00,
        numberOfRead: 5000),
    BookEntity(
        id: 2,
        poster:
            'https://cdn.shopify.com/s/files/1/2514/8624/products/bf3f273ddd5b45faa04679d58c9d6c921d2ed7b8_695x695.jpg?v=1561529056',
        title: 'At Home with Mohammed Ali',
        author: 'Hana Alli',
        imageUrl:
            'https://m.media-amazon.com/images/I/41KWdEAYxYL._SX319_BO1,204,203,200_.jpg',
        authorImageUrl:
            'https://m.media-amazon.com/images/I/818J1HKvLEL._SY600_.jpg',
        star: 4.7,
        price: 10.00,
        numberOfRead: 6400),
    BookEntity(
        id: 3,
        poster:
            'https://i0.wp.com/thestackspodcast.com/wp-content/uploads/2020/10/17B98ACB-A05A-4D0F-84FB-E55E6F8F6AF4-4B7B88AA-EAC8-40B7-B8B6-6C42F8DB80BA.jpg?resize=359%2C411&ssl=1',
        title: 'Malcolm X',
        author: 'Alex Haley',
        imageUrl:
            'https://m.media-amazon.com/images/I/41kcVpxQvmL._SX303_BO1,204,203,200_.jpg',
        authorImageUrl:
            'https://m.media-amazon.com/images/I/01Kv-W2ysOL._SY230_CR0%2C0%2C230%2C230_.png',
        star: 5,
        price: 8.00,
        numberOfRead: 5900),
    BookEntity(
        id: 4,
        poster:
            'https://i0.wp.com/prisonjournalismproject.org/wp-content/uploads/2022/11/prison-journalism-obama-becoming-review-111822.jpg?resize=1200%2C900&ssl=1',
        title: 'Becoming Michelle Obama',
        author: 'Michelle Obama',
        imageUrl:
            'https://m.media-amazon.com/images/I/412GJ0rUi-L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
        authorImageUrl:
            'https://m.media-amazon.com/images/S/amzn-author-media-prod/kps6s9higps8qfj9iaghq872n0._SX450_.jpg',
        star: 4.1,
        price: 20.00,
        numberOfRead: 5600),
    BookEntity(
        id: 5,
        poster: 'https://m.media-amazon.com/images/I/81MkaYB3EsL.jpg',
        title: 'The Story of Walt Disney',
        author: 'Susan B Katz',
        imageUrl:
            'https://d1b14unh5d6w7g.cloudfront.net/1638782369.01.S001.LXXXXXXX.jpg?Expires=1682101967&Signature=aqt3oFoULrxSqS-SFfqZ8ljx8oC9Rv64BVtopp15tjY15IqkWX6wkT3DEmTdt8XpmS3tNF2IRU5MHIxx6v4qKv3Y4pRDNYy-aUVuVeiOygXi7lCqYvHwC8plxshZt09zZCc8Uqq0SFeqTujjCKfqFiiZitXspFQ~MXFJbM66wqE_&Key-Pair-Id=APKAIUO27P366FGALUMQ',
        authorImageUrl:
            'https://m.media-amazon.com/images/S/amzn-author-media-prod/8buq5ld6qrn1s8gnbi90e4ktci._SX253_CR0%2C0%2C253%2C253_.jpg',
        star: 3.5,
        price: 29.00,
        numberOfRead: 6000),
    BookEntity(
        id: 6,
        poster:
            'https://multicultural.nsw.gov.au/wp-content/uploads/2022/11/Eddie-Jaku.jpg',
        title: 'The Happiest Man on Earth',
        author: 'Eddie Jaku',
        imageUrl: 'https://m.media-amazon.com/images/I/51ZFMvetuUL.jpg',
        authorImageUrl:
            'https://m.media-amazon.com/images/I/01Kv-W2ysOL._SY230_CR0%2C0%2C230%2C230_.png',
        star: 4.3,
        price: 19.00,
        numberOfRead: 11000),
  ];

  static List<CurrentBookEntity> currentReadingList = [
    CurrentBookEntity(
      id: 0,
      title: 'Afterlife',
      imageUrl: 'assets/images/images/Book_01.png',
      readingPercent: 100,
    ),
    CurrentBookEntity(
      id: 1,
      title: 'Ghost Boys',
      imageUrl: 'assets/images/images/Book_02.png',
      readingPercent: 60,
    ),
  ];
}
