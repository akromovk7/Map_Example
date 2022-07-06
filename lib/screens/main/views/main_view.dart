import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_example/screens/main/cubit/main_cubit.dart';
import 'package:map_example/screens/main/state/main_state.dart';
import 'package:map_example/screens/main/views/pages/community_view.dart';
import 'package:map_example/screens/main/views/pages/home_view.dart';
import 'package:map_example/screens/main/views/pages/services_view.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainCubit(),
      child: scaffold(),
    );
  }

  Scaffold scaffold() => Scaffold(
        body: BlocConsumer<MainCubit, MainState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is HomeState) {
              return HomeView();
            } else if (state is CommunityState) {
              return CommunityView();
            } else if (state is ServicesState) {
              return ServicesView();
            } else {
              return SizedBox();
            }
          },
        ),
      );
}
