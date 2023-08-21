import 'package:flutter_riverpod/flutter_riverpod.dart';

final multiplesFutureProvider = FutureProvider<List<int>>((ref) async {
  await Future.delayed(
    Duration(
      seconds: 2,
    ),
  );

  //일부러 에러를 낼수 있음
  // throw Exception('에러입니다.');

  return [1,2,3,4,5];
});
