part of 'mosque_cubit.dart';

abstract class MosqueState extends Equatable {
  const MosqueState();

  @override
  List<Object> get props => [];
}

class MosqueInitial extends MosqueState {}

class MosqueLoading extends MosqueState {}

class MosqueLoaded extends MosqueState {
  final List<Mosque> mosques;

  const MosqueLoaded(this.mosques);

  @override
  List<Object> get props => [mosques];
}

class MosqueError extends MosqueState {
  final String message;

  const MosqueError(this.message);

  @override
  List<Object> get props => [message];
}
