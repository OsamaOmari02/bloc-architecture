part of 'cities_cubit.dart';

@immutable
sealed class CitiesState {}

final class CitiesInitial extends CitiesState {}

final class CitiesFetchLoading extends CitiesState {}

final class CitiesFetchSuccess extends CitiesState {}

final class CitiesFetchFailure extends CitiesState {
  final String errMessage;
  CitiesFetchFailure({required this.errMessage});
}

final class CityChange extends CitiesState {}
