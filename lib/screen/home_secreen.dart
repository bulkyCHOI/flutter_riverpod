import 'package:flutter/material.dart';
import 'package:rd/layout/default_layout.dart';
import 'package:rd/screen/future_provider_screen.dart';
import 'package:rd/screen/state_notifier_provider_screen.dart';
import 'package:rd/screen/state_provider_screen.dart';
import 'package:rd/screen/stream_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => StateProviderScreen(),
                ),
              );
            },
            child: Text('StateProviderScreen'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => StateNotifierProviderScreen(),
                ),
              );
            },
            child: Text('StateNotifierProviderScreen'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => FutureProviderScreen(),
                ),
              );
            },
            child: Text('FutureProviderScreen'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => StreamProviderScreen(),
                ),
              );
            },
            child: Text('StreamProviderScreen'),
          ),
        ],
      ),
    );
  }
}
