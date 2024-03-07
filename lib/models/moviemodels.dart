class MovieData {
  final String id;
  final String title;
  final double price;
  final String pic;
  final String desc;

  MovieData({
    required this.id,
    required this.title,
    required this.price,
    required this.pic,
    required this.desc,
  });

  @override
  String toString() {
    return 'MovieData(id: $id, title: $title, price: $price, pic: $pic, desc: $desc)';
  }
}