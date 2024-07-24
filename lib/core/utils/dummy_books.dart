

import 'assets.dart';

class Book {
  final String image;
  final String name;
  final String authorName;
  final String rate;
  final String price;
  final String likes;

  Book( {
    required this.price,
    required this.image,
    required this.name,
    required this.authorName,
    required this.rate,
    required this.likes,
  });
}

List<Book> books = [
  Book(
    image: AssetsData.testImage1,
    name: 'GRAVITY',
    authorName: 'George Clooney',
    rate: '4.5',
    likes: '(180)',
    price:'19.99',
  ),
  Book(
    image: AssetsData.testImage2,
    name: 'DRAGON',
    authorName: 'Jane Smith',
    rate: '4.8',
    likes: '(200)',
    price: '30.5',
  ),
  Book(
    image: AssetsData.testImage3,
    name: 'ZOOTROPOLICE',
    authorName: 'Alice Johnson',
    rate: '4.7',
    likes: '(150)',
    price: '31',
  ),
  Book(
    image: AssetsData.testImage4,
    name: 'RATATOUILLE',
    authorName: 'Bob Brown',
    rate: '4.9',
    likes: '(180)',
    price:'18',
  ),
  Book(
    image:AssetsData.testImage5,
    name: 'MOANA',
    authorName: 'Charlie Davis',
    rate: '4.6',
    likes: '(90)',
    price: '16',
  ),
  Book(
    image:AssetsData.testImage6,
    name: 'THE SOLID ROCK',
    authorName: 'Charlie Davis',
    rate: '4.6',
    likes: '(140)',
    price: '25.5',
  ),
];
