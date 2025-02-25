import 'package:ddd_architecture/features/dog_image/domain/entities/dog.dart';

class DogModel extends Dog {
  const DogModel({
    super.image,
  });


  factory DogModel.fromJson(Map<String, dynamic> json) {
    return DogModel(
      image: json['message'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': image,
    };
  }
}
