import 'package:ddd_architecture/core/entities/failure.dart';

class FailureModel extends Failure {
  const FailureModel({
    required super.errorMessage,
  });

  FailureModel fromJson(Map<String, dynamic> json) {
    return FailureModel(
      errorMessage: json['error_message'],
    );
  }

  Map<String, dynamic> toJson() => {
        'error_message': errorMessage,
      };
}
