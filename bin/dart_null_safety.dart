import 'package:dart_null_safety/dart_null_safety.dart' as dart_null_safety;

int notNullable =
    20; //The non-nullable variable 'notNullable' must be initialized

int? nullable; // this variable can store null

late int a;
// this variable is notNullable but it alow us initialize it later But initialize it before usage otherwese you will get Runtime error */

Student? student;

void main(List<String> arguments) {
  nullable = 20;
  notNullable = nullable!;
  /** ! is assertion opertor  which is used to a nullable varirable in NullSafetyVariable. 
  it actually cast int? into int . aslo if you dnot initialize nullable it will give runtime error*/

  notNullable = nullable ?? 23;
  print(
      nullable); // ?? is NUll aware opertor if nullable is null it will give default value like 23 else it will assign

  print(
      'nullable : $nullable or  an expression 84/2 = ${84 / 2} '); //To put the value of an expression inside a string, use ${expression}. If the expression is an identifier, you can omit the {}.

  student ??=
      Student(); // One is the ??= assignment operator, which assigns a value to a variable only if that variable is currently null
  student?.name;
  /**Conditional property access
To guard access to a property or method of an object that might be null, put a question mark (?) before the dot (.) */
  print(
      'Checking conditional property access ${student?.address = 'MLt'} '); //it show Mlt

  Student std = Student()
    ..rollNo
    ..name
    ..address;
  /**Cascades
To perform a sequence of operations on the same object, use cascades (..) */
  std
    ?..name //To instead use cascades, you can start with the null-shorting cascade (?..), which guarantees that none of the cascade operations are attempted on a null object
    ..name
    ..address;

  print('Hello world: ${dart_null_safety.calculate()}!');
  print(
      '''In Dart, the Runes \uffaa syntax is used to express Unicode code points within a string, where XXXX is a hexadecimal value with four digits. 
  For example, the heart character (♥) is \u2665.
   To specify more or less than four hexadecimal digits, you can put the value in curly brackets. 
   For example, the laughing emoji (😆) is \u{1f606}''');
}

class Student {
  int rollNo = 0;
  String name = 'Ali';
  String address = 'BWP';
}
/**to learn more 
 * https://dart.dev/resources/dart-cheatsheet#named-parameters
 */
