part of 'dog_image_bloc.dart';

class DogImageState extends Equatable {
  final String? dogImage;
  const DogImageState({
    this.dogImage,
  });

  DogImageState copyWith({
    String? dogImage,
  }) {
    return DogImageState(
      dogImage: dogImage ?? this.dogImage,
    );
  }

  @override
  List<Object?> get props => [dogImage];
}

class DogImageInitialState extends DogImageState {}

class DogImageLoadingState extends DogImageState {}

class DogImageError extends DogImageState {
  final String message;

  const DogImageError(this.message);

  @override
  List<Object> get props => [message];
}
