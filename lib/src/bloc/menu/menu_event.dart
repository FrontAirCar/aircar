import 'package:equatable/equatable.dart';

abstract class MenuEvent extends Equatable {}

class FetchMenuEvent extends MenuEvent {
  @override
  List<Object> get props => null;
}
