import 'package:equatable/equatable.dart';

abstract class Dog extends Equatable {
  final String? image;

  const Dog({this.image});

  @override
  List<Object?> get props => [image];
}

