import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class MenuState extends Equatable {}

class MenuInitialState extends MenuState {
  @override
  List<Object> get props => [];
}

class MenuLoadingState extends MenuState {
  @override
  List<Object> get props => [];
}

class MenuLoadedState extends MenuState {
  MenuLoadedState();
  @override
  List<Object> get props => [];
}

class MenuErrorState extends MenuState {
  String message;
  MenuErrorState({@required this.message});
  @override
  List<Object> get props => [message];
}
