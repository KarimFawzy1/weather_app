import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: TextField(
          onSubmitted: (value) async {
            var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(value);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
            label: Text("search"),
            hintText: 'Enter city name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                color: Colors.green,
              ),
            ),
            suffixIcon: Icon(Icons.search),
          ),
        ),
      )),
    );
  }
}

WeatherModel? weatherModel;
