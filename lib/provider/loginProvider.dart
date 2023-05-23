import 'package:flutter_riverpod/flutter_riverpod.dart';

class IsLoginNotifier extends StateNotifier<bool> {
  IsLoginNotifier() : super(true);
  isLogin(bool login) {
    if (login) {
      state = true;
      print('Workking 1 true');
      return state;
    } else {
      state = false;
      print('Working 2 false');
      return state;
    }
  }
}

final isLoginProvider = StateNotifierProvider<IsLoginNotifier, bool>(
  (ref) => IsLoginNotifier(),
);
