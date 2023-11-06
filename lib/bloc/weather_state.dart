part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherBlocLoading extends WeatherState {}

class WeatherBlocFailure extends WeatherState {}

class WeatherBlocSuccess extends WeatherState {
  final Weather weather;

  const WeatherBlocSuccess(this.weather);

  List<Object> get props => [weather];
}
