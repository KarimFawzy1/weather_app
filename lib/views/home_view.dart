import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchView(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: const NoWeatherBody(),
    );
  }
}
// BloC => Business Logic Component
// cubit => a state management solution that is part of the BloC library.

// create states
// create cubit
// create function
// provide cubit
// integrate cubit
// trigger cubit