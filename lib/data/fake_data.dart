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

  static List<BookEntity> books = [
    BookEntity(
        id: 1,
        title: 'The Story of Marie Curie',
        author: 'Susan R Katy',
        imageUrl:
            'https://m.media-amazon.com/images/P/1647391121.01._SCLZZZZZZZ_SX500_.jpg',
        authorImageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fsusankatzbooks.com%2Fwp-content%2Fuploads%2F2015%2F05%2FAbout-Susan.jpg&tbnid=tdNUloN_4OyD1M&vet=12ahUKEwjIwsyggbn-AhXericCHY45BVwQMygAegUIARCtAQ..i&imgrefurl=https%3A%2F%2Fsusankatzbooks.com%2F&docid=yn5e1idKO1eJtM&w=350&h=400&q=Susan%20B.%20Katz&ved=2ahUKEwjIwsyggbn-AhXericCHY45BVwQMygAegUIARCtAQ',
        star: 4.3,
        price: 13,
        numberOfRead: 5000),
    BookEntity(
        id: 2,
        title: 'At Home with Mohammed Ali',
        author: 'Hana Alli',
        imageUrl:
            'https://d1b14unh5d6w7g.cloudfront.net/0062917390.01.S001.LXXXXXXX.jpg?Expires=1682101748&Signature=CUWolFkNJfIT0jAGbDTMIrtNNmttSFrCDQ8wJZTU7bap-lGMW6QZOnMUivulLi2hXH1wr-VcocQa1JiVgw-8Q9y0HqRPQs0Njktj6IRLEf8X2pU3UOBX~Vuwj3SooLtbZ22tdLF7u-HYFi~psDWffC8SY4IdtuBCqjtBEuHxzhE_&Key-Pair-Id=APKAIUO27P366FGALUMQ',
        authorImageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fi.harperapps.com%2Fauthors%2F49966%2Fx500.JPG&tbnid=YCiLSfUORJxb8M&vet=12ahUKEwjJw5KWgrn-AhUWsCcCHcW6AwsQMygNegUIARDSAQ..i&imgrefurl=https%3A%2F%2Fwww.harpercollins.com%2Fblogs%2Fauthors%2Fhana-ali-20192132116840&docid=pmaG8nfzOKRuwM&w=360&h=540&q=Hana%20Ali%20book&hl=en&ved=2ahUKEwjJw5KWgrn-AhUWsCcCHcW6AwsQMygNegUIARDSAQ',
        star: 4.7,
        price: 10,
        numberOfRead: 6400),
    BookEntity(
        id: 3,
        title: 'Malcolm X',
        author: 'Alex Haley',
        imageUrl:
            'https://m.media-amazon.com/images/I/41kcVpxQvmL._SX303_BO1,204,203,200_.jpg',
        authorImageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fhips.hearstapps.com%2Fhmg-prod%2Fimages%2Falex-haley-39420-1-402.jpg&tbnid=2YXs90XIvX3MxM&vet=12ahUKEwi7w4nagrn-AhXxmScCHcSZAAEQMygDegUIARDnAQ..i&imgrefurl=https%3A%2F%2Fwww.biography.com%2Fauthors-writers%2Falex-haley&docid=MjFCdN4dqBIHSM&w=402&h=402&q=Alex%20Haley&hl=en&ved=2ahUKEwi7w4nagrn-AhXxmScCHcSZAAEQMygDegUIARDnAQ',
        star: 5,
        price: 8,
        numberOfRead: 59000),
    BookEntity(
        id: 4,
        title: 'Becoming Michelle Obama',
        author: 'Michelle Obama',
        imageUrl:
            'https://m.media-amazon.com/images/I/412GJ0rUi-L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
        authorImageUrl: 'https://en.wikipedia.org/wiki/Michelle_Obama',
        star: 4.1,
        price: 20,
        numberOfRead: 50600),
    BookEntity(
        id: 5,
        title: 'The Story of Walt Disney',
        author: 'Susan B Katz',
        imageUrl:
            'https://d1b14unh5d6w7g.cloudfront.net/1638782369.01.S001.LXXXXXXX.jpg?Expires=1682101967&Signature=aqt3oFoULrxSqS-SFfqZ8ljx8oC9Rv64BVtopp15tjY15IqkWX6wkT3DEmTdt8XpmS3tNF2IRU5MHIxx6v4qKv3Y4pRDNYy-aUVuVeiOygXi7lCqYvHwC8plxshZt09zZCc8Uqq0SFeqTujjCKfqFiiZitXspFQ~MXFJbM66wqE_&Key-Pair-Id=APKAIUO27P366FGALUMQ',
        authorImageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fsusankatzbooks.com%2Fwp-content%2Fuploads%2F2015%2F05%2FAbout-Susan.jpg&tbnid=tdNUloN_4OyD1M&vet=12ahUKEwjIwsyggbn-AhXericCHY45BVwQMygAegUIARCtAQ..i&imgrefurl=https%3A%2F%2Fsusankatzbooks.com%2F&docid=yn5e1idKO1eJtM&w=350&h=400&q=Susan%20B.%20Katz&ved=2ahUKEwjIwsyggbn-AhXericCHY45BVwQMygAegUIARCtAQ',
        star: 3.5,
        price: 29,
        numberOfRead: 6000),
    BookEntity(
        id: 6,
        title: 'The Happiest Man on Earth',
        author: 'Author Name',
        imageUrl:
            'https://m.media-amazon.com/images/I/51ZFMvetuUL.jpg',
        authorImageUrl:
            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fsusankatzbooks.com%2Fwp-content%2Fuploads%2F2015%2F05%2FAbout-Susan.jpg&tbnid=tdNUloN_4OyD1M&vet=12ahUKEwjIwsyggbn-AhXericCHY45BVwQMygAegUIARCtAQ..i&imgrefurl=https%3A%2F%2Fsusankatzbooks.com%2F&docid=yn5e1idKO1eJtM&w=350&h=400&q=Susan%20B.%20Katz&ved=2ahUKEwjIwsyggbn-AhXericCHY45BVwQMygAegUIARCtAQ',
        star: 4.3,
        price: 19,
        numberOfRead: 11000),
  ];
}
