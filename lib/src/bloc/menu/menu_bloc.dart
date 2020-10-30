import 'package:aircar/src/bloc/menu/menu_event.dart';
import 'package:aircar/src/bloc/menu/menu_state.dart';
import 'package:bloc/bloc.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc();

  @override
  MenuState get initialState => MenuInitialState();

  @override
  Stream<MenuState> mapEventToState(MenuEvent event) async* {
    if (event is FetchMenuEvent) {
      yield MenuLoadingState();
      try {
        yield MenuLoadedState();
      } catch (e) {
        yield MenuErrorState(message: e.toString());
      }
    }
  }
}
