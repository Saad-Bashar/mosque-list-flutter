part of 'mosque_bloc.dart';

abstract class MosqueState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MosqueInitial extends MosqueState {}

class MosqueLoading extends MosqueState {}

class MosqueLoaded extends MosqueState {
  final List<Mosque> mosques;

  MosqueLoaded({required this.mosques});

  @override
  List<Object?> get props => [mosques];
}

class MosqueError extends MosqueState {
  final String message;

  MosqueError({required this.message});

  @override
  List<Object?> get props => [message];
}
