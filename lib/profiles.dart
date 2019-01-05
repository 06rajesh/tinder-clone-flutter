final List<Profile> demoProfiles = [
  new Profile(
    photos: [
      'assets/photo_1.jpg',
      'assets/photo_2.jpg',
      'assets/photo_3.jpg',
      'assets/photo_4.jpg',
    ],
    name: 'Rose Annturi',
    bio: 'This is the person you want!'
  ),
  new Profile(
      photos: [
        'assets/photo_2.jpg',
        'assets/photo_3.jpg',
        'assets/photo_4.jpg',
        'assets/photo_1.jpg',
      ],
      name: 'Valar Margulis',
      bio: 'Man with no Face!'
  ),
  new Profile(
      photos: [
        'assets/photo_3.jpg',
        'assets/photo_4.jpg',
        'assets/photo_1.jpg',
        'assets/photo_2.jpg',
      ],
      name: 'Dahar Molaris',
      bio: 'All Men must Die!'
  ),
  new Profile(
      photos: [
        'assets/photo_4.jpg',
        'assets/photo_3.jpg',
        'assets/photo_2.jpg',
        'assets/photo_1.jpg',
      ],
      name: 'Rosette Vaduri',
      bio: 'Better swipe left!'
  ),
];


class Profile{
  final List<String> photos;
  final String name;
  final String bio;

  Profile({
    this.photos,
    this.name,
    this.bio,
  });
}