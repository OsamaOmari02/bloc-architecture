import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import '../../../../business_logic/blocs/auth_bloc/auth_bloc.dart';

final List<SingleChildWidget> myAppProviders = [
  BlocProvider<AuthBloc>(create: (context) => AuthBloc()),
];