// ignore_for_file: prefer_collection_literals

class TeacherList {
  String id;
  String name;
  String position;
  String education;
  String mobile;
  String email;
  String image;

  TeacherList({
    this.id = "",
    this.name = "",
    this.position = "",
    this.education = "",
    this.mobile = "",
    this.email = "",
    this.image = "",
  });

  factory TeacherList.fromJson(Map<String, dynamic> json) {
    return TeacherList(
      id: json['id'],
      name: json['name'],
      position: json['position'],
      education: json['education'],
      mobile: json['mobile'],
      email: json['email'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['position'] = position;
    data['education'] = education;
    data['mobile'] = mobile;
    data['email'] = email;
    data['image'] = image;
    return data;
  }
}
