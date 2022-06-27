class VenderModel {
  String? sId;
  String? name;
  String? email;
  String? password;
  String? phone;
  String? panFront;
  String? panBack;
  String? aadharFront;
  String? aadharBack;
  String? status;
  int? productin;
  int? productout;
  List<Products>? products;

  VenderModel(
      {this.sId,
      this.name,
      this.email,
      this.password,
      this.phone,
      this.panFront,
      this.panBack,
      this.aadharFront,
      this.aadharBack,
      this.status,
      this.productin,
      this.productout,
      this.products});

  VenderModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    panFront = json['pan_front'];
    panBack = json['pan_back'];
    aadharFront = json['aadhar_front'];
    aadharBack = json['aadhar_back'];
    status = json['status'];
    productin = json['productin'];
    productout = json['productout'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['_id'] = sId;
    data['name'] = name;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    data['pan_front'] = panFront;
    data['pan_back'] = panBack;
    data['aadhar_front'] = aadharFront;
    data['aadhar_back'] = aadharBack;
    data['status'] = status;
    data['productin'] = productin;
    data['productout'] = productout;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? name;
  String? barcode;
  String? pic;
  int? price;
  String? description;
  int? quantity;

  Products(
      {this.name,
      this.barcode,
      this.pic,
      this.price,
      this.description,
      this.quantity});

  Products.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    barcode = json['Barcode'];
    pic = json['Pic'];
    price = json['Price'];
    description = json['Description'];
    quantity = json['Quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['Barcode'] = barcode;
    data['Pic'] = pic;
    data['Price'] = price;
    data['Description'] = description;
    data['Quantity'] = quantity;
    return data;
  }
}
