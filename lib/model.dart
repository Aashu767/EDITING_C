// // ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

// class MenuModel {
//   int? menuId;
//   String? menuName;
//   int? count;

//   MenuModel({this.menuId, this.menuName, this.count});

//   MenuModel.fromJson(Map<dynamic, dynamic> json) {
//     menuId = json['Menu_Id'];
//     menuName = json['Menu_Name'];
//     count = json['Count'];
//   }

//   Map<dynamic, dynamic> toJson() {
//     final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
//     data['Menu_Id'] = this.menuId;
//     data['Menu_Name'] = this.menuName;
//     data['Count'] = this.count;
//     return data;
//   }
// }
class MenuModel {
  List<MenuDetails>? menuDetails;

  MenuModel({this.menuDetails});

  MenuModel.fromJson(Map<dynamic, dynamic> json) {
    if (json['Menu_Details'] != null) {
      menuDetails = <MenuDetails>[];
      json['Menu_Details'].forEach((v) {
        menuDetails!.add(MenuDetails.fromJson(v));
      });
    }
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    if (menuDetails != null) {
      data['Menu_Details'] = menuDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MenuDetails {
  int? menuId;
  String? menuName;
  int? count;

  MenuDetails({this.menuId, this.menuName, this.count});

  MenuDetails.fromJson(Map<String, dynamic> json) {
    menuId = json['Menu_Id'];
    menuName = json['Menu_Name'];
    count = json['Count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Menu_Id'] = menuId;
    data['Menu_Name'] = menuName;
    data['Count'] = count;
    return data;
  }
}
