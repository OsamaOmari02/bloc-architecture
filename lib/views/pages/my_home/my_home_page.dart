import 'package:bloc_architecture/business_logic/blocs/auth_bloc/auth_bloc.dart';
import 'package:bloc_architecture/views/shared/components/buttons/floating_action_button.dart';
import 'package:bloc_architecture/views/shared/components/text_widget.dart';
import 'package:bloc_architecture/views/shared/utlis/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is LoginLoadingState) {
              print('loading');
            } else {
              print('success');
            }
          },
          builder: (context, state) {
            if (state is LoginLoadingState) {
              return const Text('loading');
            } else {
              return const Text('success');
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButtonWidget(
          title: 'login',
          onPressed: () => context.read<AuthBloc>().add(LoginEvent(
              context: context, email: 'email', password: 'password'))),
    );
  }
}
