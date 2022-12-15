part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {

  final Resource response;
  HomeInitial(this.response);

  @override
  List<Object?> get props => [response];
}
