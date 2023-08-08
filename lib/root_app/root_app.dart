import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/create_note_cubit/create_note_cubit.dart';
import 'package:note_app/screens/home_screen_view.dart';

class Rootapp extends StatelessWidget {
  const Rootapp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateNoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const HomeScreenView(),
      ),
    );
  }
}
