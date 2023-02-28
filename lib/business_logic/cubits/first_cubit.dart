// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'first_state.dart';

class FirstCubit extends Cubit<FirstState> {
  FirstCubit() : super(FirstInitial());
}
