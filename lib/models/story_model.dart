import 'package:ChinaNow_app/models/lesson_model.dart';

class Story {
  String imageUrl;
  String name;
  String type;
  int rating;
  List<Lesson> lessons;

  Story({
    this.imageUrl,
    this.name,
    this.type,
    this.rating,
    this.lessons,
  });
}


List<Lesson> lessons1 = [
  Lesson(
    imageUrl: 'assets/images/story1.jpg',
    name: 'Chapter 1',
    type: 'Word meaning',
    duration: '35 minutes',
    rating: 5,
    website: '',
  ),
  Lesson(
    imageUrl: 'assets/images/story1.jpg',
    name: 'Chapter 2',
    type: 'Sentence meaning',
    duration: '1 hour',
    rating: 4,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/story1.jpg',
    name: 'Chapter 3',
    type: 'Story Listening',
    duration: '45 minutes',
    rating: 4,
    website: ' ',
  ),
  
];


List<Lesson> lessons2 = [
  Lesson(
    imageUrl: 'assets/images/story2.jpg',
    name: 'Chapter 1',
    type: 'Word meaning',
    duration: '35 minutes',
    rating: 5,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/story2.jpg',
    name: 'Chapter 2',
    type: 'Sentence meaning',
    duration: '1 hour',
    rating: 4,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/story2.jpg',
    name: 'Chapter 3',
    type: 'Story Listening',
    duration: '45 minutes',
    rating: 4,
    website: ' ',
  ),
  
];


List<Lesson> lessons3 = [
  Lesson(
    imageUrl: 'assets/images/story3.jpg',
    name: 'Chapter 1',
    type: 'Word meaning',
    duration: '35 minutes',
    rating: 5,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/story3.jpg',
    name: 'Chapter 2',
    type: 'Sentence meaning',
    duration: '1 hour',
    rating: 4,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/story3.jpg',
    name: 'Chapter 3',
    type: 'Story Listening',
    duration: '45 minutes',
    rating: 4,
    website: ' ',
  ),
  
];


final List<Story> stories = [
  Story(
    imageUrl: 'assets/images/story1.jpg',
    name: 'The Human Chair',
    type: 'Intermediate',
    rating: 5,
    lessons: lessons1,
  ),
  Story(
    imageUrl: 'assets/images/story2.jpg',
    name: 'The Gift of the Magi',
    type: 'Intermediate',
    rating: 4,
    lessons: lessons2,
  ),
  Story(
    imageUrl: 'assets/images/story3.jpg',
    name: 'Nie Xiaoqian',
    type: 'Advanced',
    rating: 3,
    lessons: lessons3,
  ),
];
