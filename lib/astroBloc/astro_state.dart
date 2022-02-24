import 'package:dadfs/model/user.dart';
import 'package:equatable/equatable.dart';

abstract class AstroState extends Equatable
{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class LoadedState extends AstroState
{
  User? user;

  LoadedState(this.user);
  @override
  // TODO: implement props
  List<Object?> get props => [user];
}
class LoadingState extends AstroState
{
  User? user;
  // LoadingState(this.user);
  @override
  // TODO: implement props
  List<Object?> get props => [user];
}