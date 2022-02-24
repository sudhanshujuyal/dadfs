import 'package:dadfs/model/user.dart';
import 'package:equatable/equatable.dart';

abstract class AstroEvent extends Equatable
{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class Loading extends AstroEvent
{
  User? user;
  @override
  // TODO: implement props
  List<Object?> get props => [user];
}
class Loaded extends AstroEvent
{
  User? user;
  @override
  // TODO: implement props
  List<Object?> get props => [user];
}