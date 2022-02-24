import 'package:dadfs/astroBloc/astro_bloc.dart';
import 'package:dadfs/astroBloc/astro_event.dart';
import 'package:dadfs/astroBloc/astro_state.dart';
import 'package:dadfs/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AstroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AstroBloc,AstroState>(
        builder: (context, state)
        {
          print('state is'+state.toString());
          if(state is LoadingState)
            {
              return Center(child: CircularProgressIndicator());
            }
          else if(state is LoadedState)
            {
              return Builder(
                builder: (context) {
                  User? user=state.user;
                  print('user id is'+user!.id.toString());
                  return GestureDetector(
                    onTap: (){
                      context.read<AstroBloc>().add(Loaded());

                    },
                    child: Container(
                      child: Text('ada',style: TextStyle(color: Colors.black),),
                    ),
                  );
                }
              );
            }
          return Container();

        }),

      );


  }
}
