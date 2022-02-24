import 'dart:async';

import 'package:dadfs/astroBloc/astro_event.dart';
import 'package:dadfs/astroBloc/astro_state.dart';
import 'package:dadfs/model/user.dart';
import 'package:dadfs/repo/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AstroBloc extends Bloc<AstroEvent,AstroState>
{
  UserRepository userRepository;
  AstroBloc({required this.userRepository}) : super(LoadedState(userRepository.getUser())){

   on<Loading>(_onLoading);
   on<Loaded>(_onLoaded);
  }


  FutureOr<void> _onLoading(Loading event, Emitter<AstroState> emit) async
  {
    // emit(LoadingState());
    //   print('hello');
     User? user= await userRepository.getUser();
     emit(LoadedState(user));



  }

  FutureOr<void> _onLoaded(Loaded event, Emitter<AstroState> emit)
  {
    // emit(LoadedState());
  }
}