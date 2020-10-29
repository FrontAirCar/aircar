import 'package:aircar/src/model/automobile_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AutomobileState extends Equatable {}

class AutomobileInitialState extends AutomobileState {
  @override
  List<Object> get props => [];
}

class AutomobileLoadingState extends AutomobileState {
  @override
  List<Object> get props => [];
}

class AutomobileLoadedState extends AutomobileState {
  List<Automobile> automobile;
  AutomobileLoadedState({@required this.automobile});
  @override
  List<Object> get props => [automobile];
}

class AutomobileErrorState extends AutomobileState {
  String message;
  AutomobileErrorState({@required this.message});
  @override
  List<Object> get props => [message];
}
