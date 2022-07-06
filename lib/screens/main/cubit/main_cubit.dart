import 'package:bloc/bloc.dart';
import 'package:map_example/screens/main/state/main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(HomeState());

  changeState(MainState state) {
    emit(state);
  }
}