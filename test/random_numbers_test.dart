import 'package:flutter_test/flutter_test.dart';
import 'package:test_project/services/random_numbers.dart';

void main() {
  List<String> randomNumbers = [];
  const matcher = 4;
  test('The resulting size of RandomNumbers List should be 4', () async {
    randomNumbers = await RandomNumbers().getRandomNumbers();

    final int randomNumbersLength = randomNumbers.length;

    expect(randomNumbersLength, matcher);
  });
}
