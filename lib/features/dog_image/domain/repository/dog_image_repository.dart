import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/core/entities/failure.dart';
import 'package:ddd_architecture/features/dog_image/domain/entities/dog.dart';

abstract class DogImageRepository {
   Future<Either<Failure, Dog>> fetchDogImage();
}