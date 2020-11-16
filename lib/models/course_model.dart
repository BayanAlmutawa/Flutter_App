
import 'package:ChinaNow_app/models/lesson_model.dart';

class Course {
  String imageUrl;
  String type;
  String name;
  String description;
  List<Lesson> lessons;

  Course({
    this.imageUrl,
    this.type,
    this.name,
    this.description,
    this.lessons,
  });
}

List<Lesson> lessons1 = [
  Lesson(
    imageUrl: 'assets/images/china.jpg',
    name: '1: Hello',
    type: 'Anne strikes up a conversation with a visitor.',
    duration: '15 minutes',
    rating: 5,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/china.jpg',
    name: '2: My name is Anne',
    type: 'Anne asking the visitor his name.',
    duration: '20 minutes',
    rating: 4,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/china.jpg',
    name: '3: How are you?',
    type: 'Anne exchange greetings.',
    duration: '16 minutes',
    rating: 3,
    website: ' ',
  ),
];


List<Lesson> lessons2 = [
  Lesson(
    imageUrl: 'assets/images/comm.png',
    name: '1: Hello',
    type: 'education lesson',
    duration: '30 minutes',
    rating: 5,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/comm.png',
    name: '2: My name is Anne',
    type: 'Sightseeing Tour',
    duration: '25 minutes',
    rating: 4,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/comm.png',
    name: '3: How are you?',
    type: 'Sightseeing Tour',
    duration: '40 minutes',
    rating: 3,
    website: ' ',
  ),
];



List<Lesson> lessons3 = [
  Lesson(
    imageUrl: 'assets/images/speaking.png',
    name: '1: Hello',
    type: 'education lesson',
    duration: '20 minutes',
    rating: 5,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/speaking.png',
    name: '2: My name is Anne',
    type: 'Sightseeing Tour',
    duration: '35 minutes',
    rating: 4,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/speaking.png',
    name: '3: How are you?',
    type: 'Sightseeing Tour',
    duration: '25 minutes',
    rating: 3,
    website: ' ',
  ),
];

List<Lesson> lessons4 = [
  Lesson(
    imageUrl: 'assets/images/expert.jpg',
    name: '1: Hello',
    type: 'education lesson',
    duration: '15 minutes',
    rating: 5,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/expert.jpg',
    name: '2: My name is Anne',
    type: 'Sightseeing Tour',
    duration: '45 minutes',
    rating: 4,
    website: ' ',
  ),
  Lesson(
    imageUrl: 'assets/images/expert.jpg',
    name: '3: How are you?',
    type: 'Sightseeing Tour',
    duration: '35 minutes',
    rating: 3,
    website: ' ',
  ),
];

List<Course> courses = [
  Course(
    imageUrl: 'assets/images/china.jpg',
    type: 'Beginner',
    name: 'Course 1: Anne arrives in China',
    description: 'Provide a solid foundation in Chinese language.',
    lessons: lessons1,
  ),
  Course(
    imageUrl: 'assets/images/comm.png',
    type: 'Intermediate',
    name: 'Course 2: China’s Favorite Sport',
    description: 'Improve your Chinese communication skills.',
    lessons: lessons2,
  ),
  Course(
    imageUrl: 'assets/images/speaking.png',
    type: 'Advanced',
    name: 'Course 3: Cute Supertitions',
    description: 'Enhance Chinese speaking and reading fluency.',
    lessons: lessons3,
  ),
  Course(
    imageUrl: 'assets/images/expert.jpg',
    type: 'Expert',
    name: 'Course 4: Why I Practice Wushu',
    description: 'Mastering specific categories of Chinese language.',
    lessons: lessons4,
  ),
];
