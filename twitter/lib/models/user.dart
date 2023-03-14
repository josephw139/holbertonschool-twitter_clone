class User {
  String key;
  String userID;
  String email;
  String name;
  String userName;
  String displayName;
  String imageUrl;
  int followers;
  int following;
  List<String> followersList;
  List<String> followingList;

  User(
      this.key,
      this.userID,
      this.email,
      this.name,
      this.userName,
      this.displayName,
      this.imageUrl,
      this.followers,
      this.following,
      this.followersList,
      this.followingList);

  static User fromJson(Map<dynamic, dynamic> map) => User(
        key: map['key'],
        userID: map['userID'],
        email: map['email'],
        name: map['name'],
        userName: map['userName'],
        displayName: map['displayName'],
        imageUrl: map['imageUrl'],
        followers: map['followers'],
        following: map['following'],
        followersList: map['followersList'],
        followingList: map['followingList'],
      );

  toJson() => {
        'key': key,
        'email': email,
        'name': name,
        'userName': userName,
        'displayName': displayName,
        'imageUrl': imageUrl,
        'followers': followers,
        'following': following,
        'followersList': followersList,
        'followingList': followingList,
      };
}
