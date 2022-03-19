
class BusinessPartnerModel {
  int? id;
  String? name;
  List<Categories>? categories;

  BusinessPartnerModel({this.id, this.name, this.categories});

  BusinessPartnerModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
  }

  Map<dynamic, dynamic>? toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? id;
  String? name;
  List<Items>? items;

  Categories({this.id, this.name, this.items});

  Categories.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? id;
  String? name;
  String? description;
  double? price;
  List<AddOns>? addOns;

  Items({this.id, this.name, this.description, this.price, this.addOns});

  Items.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    if (json['addOns'] != null) {
      addOns = <AddOns>[];
      json['addOns'].forEach((v) {
        addOns!.add(AddOns.fromJson(v));
      });
    }
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    if (addOns != null) {
      data['addOns'] = addOns!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AddOns {
  int? id;
  String? name;
  int? price;

  AddOns({this.id, this.name, this.price});

  AddOns.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}