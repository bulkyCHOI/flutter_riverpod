import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rd/screen/home_secreen.dart';

void main() {
  runApp(
    ProviderScope(  // MaterialApp 위에 ProviderScope이 있어야 riverpod을 쓸수 있다.
      child: MaterialApp(
        home: HomeScreen(),
      ),
    ),
  );
}

