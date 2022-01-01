import 'package:faker/faker.dart';
import 'package:flutter_design_patterns/design_patterns/bridge/entities/entity_base.dart';

class Customer extends EntityBase {
  late String name;
  late String email;

  Customer() : super() {
    name = faker.guid.guid();
    email = faker.internet.email();
  }

  Customer.fromJson(Map<String, dynamic> json)
      : name = json["name"] as String,
        email = json["email"] as String,
        super.fromJson(json);

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
      };
}
