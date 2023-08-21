import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rd/layout/default_layout.dart';
import 'package:rd/riverpod/select_provider.dart';

class SelectProviderScreen extends ConsumerWidget {
  const SelectProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //select를 통해 필요한것을 최소화 하여 렌더링한다.
    print('build');
    final state = ref.watch(selectProvider.select((value) =>
        value.isSpicy)); //select를 통해서 isSaicy에 변경이 있을때문 build를 통해 렌더링 한다.
    ref.listen( //listen이기 때문에 변경되는 값을 보기만 할분, build를 롱해 렌더링하지 않는다.
        selectProvider.select((value) => value.hasBought), (previous, next) {
          print('next: $next');
    });

    return DefaultLayout(
        title: 'SelectProviderScreen',
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(state.name),
              // Text(state.isSpicy.toString()),
              // Text(state.hasBought.toString()),
              Text(state.toString()),
              //select isSpicy 했을 경우에 state에 isSpicy만 담겨서 오므로
              ElevatedButton(
                onPressed: () {
                  ref.read(selectProvider.notifier).toggleIsSpacy();
                },
                child: Text('Spicy Toggle'),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(selectProvider.notifier).toggleHasBought();
                },
                child: Text('Bought Toggle'),
              ),
            ],
          ),
        ));
  }
}
