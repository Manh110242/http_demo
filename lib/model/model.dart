class Posts {
  final String userId;
  final String id;
  final String title;
  final String body;

  Posts({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Posts.fromJson(Map json) {
    return Posts(
      userId: json['userId'].toString(),
      id: json['id'].toString(),
      title: json['title'].toString(),
      body: json['body'].toString(),
    );
  }
}