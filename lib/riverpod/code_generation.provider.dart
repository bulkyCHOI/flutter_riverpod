import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'code_generation.provider.g.dart';

// 1) 어떤 프로바이더를 사용할지 고민할 필요 없도록
//  Provider, FutureProvider, StreamProvider(지원예정)
//  StateNotifierProvider >> 명시적으로 사용가능
final _testProvider = Provider<String>((ref) => 'hello code generation');

@riverpod
String gState(GStateRef ref) {
  return 'hello code generation';
}

@riverpod
Future<int> gStateFuture(GStateFutureRef ref)async{
  await Future.delayed(Duration(seconds: 2));

  return 10;
}

@Riverpod(  //대문자로 해야하고
  keepAlive: true,  //true로 넣어주면 autoDispose되지 않는다.
)
Future<int> gStateFuture2(GStateFuture2Ref ref)async{
  await Future.delayed(Duration(seconds: 2));

  return 10;
}


// 2) Parameter > Family 파라미터를 일반 함수처럼 사용할 수 있도록
//    기존에는 int 하나만 사용했고, 여러개를 넣으려면 List나 Map을 사용하거나 Class로 정의해서 파라미터를 넘겨줘야 했다 >> 너무나 귀찮겟죠?