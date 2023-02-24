// ignore_for_file: public_member_api_docs, sort_constructors_first
class Post {
  int id;
  int userId;
  String title;
  String body;
  Post({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });
  //Second type of constructor : its name is fromJson
  // factory reads a created object : we won't create a new object with the constructor instead I'll use an existant object
  factory Post.fromJson(Map<String, dynamic> postJson) {
    return Post(
        id: postJson['id'],
        userId: postJson['userId'],
        title: postJson['title'],
        body: postJson['body']);
  }
}
