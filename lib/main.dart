import 'package:dadfs/astroBloc/astro_bloc.dart';
import 'package:dadfs/astro_page.dart';
import 'package:dadfs/repo/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_)=>AstroBloc(userRepository: UserRepository()),
          child: AstroPage()),
    );
  }
}
