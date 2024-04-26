part of 'mosque_bloc.dart';

abstract class MosqueEvent extends Equatable {
  const MosqueEvent();

  @override
  List<Object> get props => [];
}

class FetchMosques extends MosqueEvent {}
