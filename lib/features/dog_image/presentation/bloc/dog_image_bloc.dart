import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_random_dog_image.dart';
part 'dog_image_event.dart';
part 'dog_image_state.dart';

class DogImageBloc extends Bloc<DogImageEvent, DogImageState> {
  final GetRandomDogImageUseCase getDogImage;

  DogImageBloc({required this.getDogImage}) : super(DogImageInitialState()) {
    on<FetchDogImage>((event, emit) async {
      emit(DogImageLoadingState());

      final result = await getDogImage();

      result.fold(
        (failure) {
          emit(DogImageError(failure.errorMessage));
        },
        (dog) => emit(state.copyWith(dogImage: dog.image)),
      );
    });
  }
}
