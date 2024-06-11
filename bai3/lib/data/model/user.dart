class User {
  int? id;
  String? username;
  bool? active;
  String? displayName;
  String? dob;
  String? email;
  String? firstName;
  String? lastName;

  User(
      {this.id,
      this.username,
      this.active,
      this.displayName,
      this.dob,
      this.email,
      this.firstName,
      this.lastName});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    active = json['active'];

    displayName = json['displayName'];
    dob = json['dob'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'active': active,
      "displayName": displayName,
      'dob': dob,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
    };
  }
}
