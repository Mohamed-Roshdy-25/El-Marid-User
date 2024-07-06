class AppColor {
  String? status;
  Color? color;

  AppColor({this.status, this.color});

  AppColor.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    color = json['color'] != null ? new Color.fromJson(json['color']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.color != null) {
      data['color'] = this.color!.toJson();
    }
    return data;
  }
}

class Color {
  String? primary;
  String? secondary;
  String? primaryLight;

  Color({this.primary, this.secondary, this.primaryLight});

  Color.fromJson(Map<String, dynamic> json) {
    primary = json['primary'];
    secondary = json['secondary'];
    primaryLight = json['primary_light'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['primary'] = this.primary;
    data['secondary'] = this.secondary;
    data['primary_light'] = this.primaryLight;
    return data;
  }
}
