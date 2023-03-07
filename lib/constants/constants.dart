
class ImageItem {
  final String imageUrl;
  final String name;
  final String country;

  ImageItem(
      {required this.imageUrl, required this.name, required this.country});
}
const urlPrefix =
    'https://docs.flutter.dev/cookbook/img-files/effects/parallax';
    
final imageItems = <ImageItem>[
  ImageItem(
    name: 'Mount Rushmore',
    country: 'U.S.A',
    imageUrl: '$urlPrefix/01-mount-rushmore.jpg',
  ),
  ImageItem(
    name: 'Gardens By The Bay',
    country: 'Singapore',
    imageUrl: '$urlPrefix/02-singapore.jpg',
  ),
  ImageItem(
    name: 'Machu Picchu',
    country: 'Peru',
    imageUrl: '$urlPrefix/03-machu-picchu.jpg',
  ),
  ImageItem(
    name: 'Vitznau',
    country: 'Switzerland',
    imageUrl: '$urlPrefix/04-vitznau.jpg',
  ),
  ImageItem(
   name: 'Bali',
    country: 'Indonesia',
    imageUrl: '$urlPrefix/05-bali.jpg',
  ),
  ImageItem(
   name: 'Mexico City',
    country: 'Mexico',
    imageUrl: '$urlPrefix/06-mexico-city.jpg',
  ),
  ImageItem(
   name: 'Cairo',
    country: 'Egypt',
    imageUrl: '$urlPrefix/07-cairo.jpg',
  ),
];

class VideoItem {
  final String videoUrl;
  final String name;
  final String credits;

  VideoItem(
      {required this.videoUrl, required this.name, required this.credits});
}

final videoItems = <VideoItem>[
  VideoItem(
    videoUrl:
        "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    name: "BigBuckBunny",
    credits: "gtv",
  ),
  VideoItem(
    videoUrl:
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    name: "ElephantsDream",
    credits: "gtv",
  ),
  VideoItem(
    videoUrl:
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    name: "ForBiggerBlazes",
    credits: "gtv",
  ),
  VideoItem(
    videoUrl:
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    name: "ForBiggerEscapes",
    credits: "gtv",
  ),
  VideoItem(
    videoUrl:
        "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    name: "ForBiggerFun",
    credits: "gtv",
  ),
];
