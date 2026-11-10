import 'package:flutter_test/flutter_test.dart';
import 'package:car_pooling_app/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('SignupViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
