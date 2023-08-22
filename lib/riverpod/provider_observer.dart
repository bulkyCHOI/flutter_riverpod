import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver{
  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    print('[Provider Observer Updated] provider: $provider / pv: $previousValue / nv: $newValue');
  }

  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value, ProviderContainer container) {
    print('[Provider Observer Added] provider: $provider / value: $value');
  }

  @override
  void didDisposeProvider(ProviderBase<Object?> provider, ProviderContainer container) {
    print('[Provider Observer Disposed] provider: $provider');
  }
}