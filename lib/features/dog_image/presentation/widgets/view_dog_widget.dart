import 'package:ddd_architecture/features/dog_image/presentation/bloc/dog_image_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewDogWidget extends StatelessWidget {
  const ViewDogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DogImageBloc, DogImageState>(builder: (context, state) {
      if (state.dogImage != null) {
        if (state is DogImageLoadingState) {
          return CircularProgressIndicator();
        }
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            state.dogImage!,
            height: 250,
            width: 250,
            fit: BoxFit.cover,
          ),
        );
      }
      return SizedBox(
        height: 25,
      );
    });
  }
}
