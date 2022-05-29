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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['position'] = this.position;
    data['education'] = this.education;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['image'] = this.image;
    return data;
  }
}
