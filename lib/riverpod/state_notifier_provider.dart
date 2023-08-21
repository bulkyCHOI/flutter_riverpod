import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rd/model/shopping_item_model.dart';

final shoppingListProvider =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
  (ref) => ShoppingListNotifier(),
);

class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppingListNotifier()
      : super([
          ShoppingItemModel(
            name: '김치',
            quantity: 3,
            hasBought: false,
            isSpicy: true,
          ),
          ShoppingItemModel(
            name: '라면',
            quantity: 5,
            hasBought: false,
            isSpicy: true,
          ),
          ShoppingItemModel(
            name: '수박',
            quantity: 1,
            hasBought: false,
            isSpicy: false,
          ),
          ShoppingItemModel(
            name: '카스테라',
            quantity: 7,
            hasBought: false,
            isSpicy: false,
          ),
        ]);

  void toggleHasBought({required String name}) {
    state = state
        .map((e) => e.name == name //이름이 같으면
            ? ShoppingItemModel(  //새로운 모델을 만들어서 hasBought만 바꿔서 넣고
                name: e.name,
                quantity: e.quantity,
                hasBought: !e.hasBought,
                isSpicy: e.isSpicy,
              )
            : e)  //다르면 변화없음
        .toList();  //map()을 사용하면 iterable type이므로 List로 변환
  }
}
