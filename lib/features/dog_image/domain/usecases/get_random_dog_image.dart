import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/core/entities/failure.dart';
import 'package:ddd_architecture/features/dog_image/domain/entities/dog.dart';
import 'package:ddd_architecture/features/dog_image/domain/repository/dog_image_repository.dart';


class GetRandomDogImageUseCase {
  final DogImageRepository repository;

  GetRandomDogImageUseCase(this.repository);

  Future<Either<Failure, Dog>> call() {
    return repository.fetchDogImage();
  }
}


///
///if the function requires params , you can create a class for params,
///e.g GetDogImageParams() with all the required params.
///