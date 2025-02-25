import 'package:ddd_architecture/features/dog_image/presentation/bloc/dog_image_bloc.dart';
import 'package:ddd_architecture/injection_container.dart';
import 'package:flutter/material.dart';

//this can be put in the constants file
final dogImageBloc = serviceLocator<DogImageBloc>();

class FetchNewDogButton extends StatelessWidget {
  const FetchNewDogButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        dogImageBloc.add(FetchDogImage());
      },
      child: const Text(
        "Fetch New Dog",
      ),
    );
  }
}
