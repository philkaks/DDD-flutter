import 'package:flutter/material.dart';
import '../widgets/fetch_new_dog_button.dart';
import '../widgets/view_dog_widget.dart';

class ViewDogPage extends StatelessWidget {
  const ViewDogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Random Dog Viewer")),
      body: Center(
        child: Column(
          spacing: 12,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ViewDogWidget(),
            FetchNewDogButton(),
          ],
        ),
      ),
    );
  }
}
