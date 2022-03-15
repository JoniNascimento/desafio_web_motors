class Vehicle {
  int? iD;
  String? make;
  String? model;
  String? version;
  String? image;
  int? kM;
  String? price;
  int? yearModel;
  int? yearFab;
  String? color;

  Vehicle(
      {this.iD,
      this.make,
      this.model,
      this.version,
      this.image,
      this.kM,
      this.price,
      this.yearModel,
      this.yearFab,
      this.color});

  Vehicle.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    make = json['Make'];
    model = json['Model'];
    version = json['Version'];
    image = json['Image'];
    image = image?.replaceAll('http', 'https');
    kM = json['KM'];
    price = json['Price'];
    yearModel = json['YearModel'];
    yearFab = json['YearFab'];
    color = json['Color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Make'] = make;
    data['Model'] = model;
    data['Version'] = version;
    data['Image'] = image;
    data['KM'] = kM;
    data['Price'] = price;
    data['YearModel'] = yearModel;
    data['YearFab'] = yearFab;
    data['Color'] = color;
    return data;
  }
}