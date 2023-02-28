
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'first_event.dart';
part 'first_state.dart';

class FirstBloc extends Bloc<FirstEvent, FirstState> {
  FirstBloc() : super(FirstInitial()) {
    on<FirstEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
