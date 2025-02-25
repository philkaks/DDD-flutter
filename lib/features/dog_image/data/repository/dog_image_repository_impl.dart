import 'package:dartz/dartz.dart';
import 'package:ddd_architecture/core/entities/failure.dart';
import 'package:ddd_architecture/features/dog_image/data/datasources/remote/dog_image_datasource.dart';
import 'package:ddd_architecture/features/dog_image/domain/entities/dog.dart';
import 'package:ddd_architecture/features/dog_image/domain/repository/dog_image_repository.dart';

class DogImageRepositoryImpl implements DogImageRepository {
  final DogImageDatasource dogImageDatasource;

  DogImageRepositoryImpl(this.dogImageDatasource);
  @override
  Future<Either<Failure, Dog>> fetchDogImage() {
    return dogImageDatasource.fetchDogImage();
  }
}
