part of 'app_color_cubit.dart';

sealed class AppColorState{
  const AppColorState();
}

final class AppColorInitial extends AppColorState {
  @override
  List<Object> get props => [];
}

final class GetAppColorLoadingState extends AppColorState {
  @override
  List<Object> get props => [];
}

final class GetAppColorSuccessState extends AppColorState {
  @override
  List<Object> get props => [];
}

final class GetAppColorErrorState extends AppColorState {
  final String message;
  const GetAppColorErrorState(this.message);

  @override
  List<Object> get props => [];
}
