import 'package:ddd_architecture/features/dog_image/presentation/bloc/dog_image_bloc.dart';
import 'package:ddd_architecture/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/dog_image/presentation/pages/view_dog_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<DogImageBloc>(
          create: (_) => serviceLocator<DogImageBloc>(),
        ),
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ViewDogPage(),
    );
  }
}
