import 'package:ddd_architecture/features/dog_image/data/datasources/remote/dog_image_datasource.dart';
import 'package:ddd_architecture/features/dog_image/data/repository/dog_image_repository_impl.dart';
import 'package:ddd_architecture/features/dog_image/domain/repository/dog_image_repository.dart';
import 'package:ddd_architecture/features/dog_image/domain/usecases/get_random_dog_image.dart';
import 'package:get_it/get_it.dart';
import 'features/dog_image/presentation/bloc/dog_image_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {

  //repository
  serviceLocator.registerLazySingleton<DogImageRepository>(
    () => DogImageRepositoryImpl(serviceLocator()),
  );

  //usecase
  serviceLocator.registerLazySingleton(
    () => GetRandomDogImageUseCase(serviceLocator()),
  );

  //blocs
   serviceLocator.registerLazySingleton<DogImageBloc>(
    () => DogImageBloc(getDogImage: serviceLocator()),
  );

  //datasource
   serviceLocator.registerLazySingleton<DogImageDatasource>(
    () => DogImageDatasourceImpl(),
  );
}
