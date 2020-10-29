import 'package:aircar/src/bloc/automobile/automobile_event.dart';
import 'package:aircar/src/bloc/automobile/automobile_state.dart';
import 'package:aircar/src/model/automobile_model.dart';
import 'package:aircar/src/repository/automobile_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class AutomobileBloc extends Bloc<AutomobileEvent, AutomobileState> {
  AutomobileRepository automobileRepository;
  AutomobileBloc({@required this.automobileRepository});

  @override
  AutomobileState get initialState => AutomobileInitialState();

  @override
  Stream<AutomobileState> mapEventToState(AutomobileEvent event) async* {
    if (event is FetchAutomobileEvent) {
      yield AutomobileLoadingState();
      try {
        List<Automobile> automobiles =
            await automobileRepository.getAutomobiles();
        yield AutomobileLoadedState(automobile: automobiles);
      } catch (e) {
        yield AutomobileErrorState(message: e.toString());
      }
    }
  }
}
