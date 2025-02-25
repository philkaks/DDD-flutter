import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/core/entities/failure.dart';
import 'package:ddd_architecture/core/models/failure_model.dart';
import 'package:ddd_architecture/features/dog_image/data/models/dog_model.dart';
import 'package:ddd_architecture/features/dog_image/domain/entities/dog.dart';
import 'package:http/http.dart' as http;

abstract class DogImageDatasource {
  Future<Either<Failure, Dog>> fetchDogImage();
}

class DogImageDatasourceImpl implements DogImageDatasource {
  @override
  Future<Either<Failure, Dog>> fetchDogImage() async {
    final url = Uri.parse('https://dog.ceo/api/breeds/image/random');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        final dogImageUrl = data['message'];
        final dog = DogModel(
          image: dogImageUrl,
        );

        return Right(dog);
      } else {
        return Left(FailureModel(errorMessage: "${response.statusCode}"));
      }
    } catch (e) {
      return Left(FailureModel(errorMessage: "Error fetching data"));
    }
  }
}
