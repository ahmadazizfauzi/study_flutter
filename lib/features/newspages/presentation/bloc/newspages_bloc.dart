import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newspages_event.dart';
part 'newspages_state.dart';

class NewspagesBloc extends Bloc<NewspagesEvent, NewspagesState> {
  NewspagesBloc() : super(NewspagesInitial()) {
    on<NewspagesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
