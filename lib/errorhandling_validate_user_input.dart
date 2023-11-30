/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/errorhandling_validate_user_input_base.dart';

/*
Practice Question 3: Validate User Input

Question:

Write a function validateInput(String input) that checks if the input is a valid alphanumeric string.

If the input is not alphanumeric, throw a custom exception InvalidInputException with a relevant message.

Handle InvalidInputException in the calling code and return a boolean indicating whether the input is valid.
 */

bool validateInput(String input) {
  return (RegExp(r'^[\w]+$').hasMatch(input))
      ? true
      : throw InvalidInputException("This input is not alphanumeric!");
}

void main() {
  print(validateInput('jaiojf89798BKB33'));
}

class InvalidInputException implements Exception {
  InvalidInputException(this.message);

  final String message;
}
