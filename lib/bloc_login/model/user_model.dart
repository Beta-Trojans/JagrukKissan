class User {
  int id;
  String username;
  String token;
  String contact;
  String pincode;

  User(
      {this.id,
      this.username,
      this.contact,
      this.pincode,
      this.token,
      });

  factory User.fromDatabaseJson(Map<String, dynamic> data) => User(
      id: data['id'],
      username: data['username'],
      contact: data['contact'],
      pincode: data['pincode'],
      token: data['token'],
  );

  Map<String, dynamic> toDatabaseJson() => {
        "id": this.id,
        "username": this.username,
        "contact": this.contact,
        "pincode": this.pincode,
        "token": this.token
      };
}