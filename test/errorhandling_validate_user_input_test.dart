import 'package:errorhandling_validate_user_input/errorhandling_validate_user_input.dart';
import 'package:test/test.dart';

void main() {
  test('validateInput returns true for valid alphanumeric input', () {
    expect(validateInput('Valid123'), isTrue);
  });

  test('validateInput handles InvalidInputException for non-alphanumeric input',
      () {
    expect(() => validateInput('Invalid!@#'),
        throwsA(isA<InvalidInputException>()));
  });

  test('validateInput throws InvalidInputException for empty input', () {
    // Assuming empty input should throw exception
    expect(() => validateInput(''), throwsA(isA<InvalidInputException>()));
  });
}
