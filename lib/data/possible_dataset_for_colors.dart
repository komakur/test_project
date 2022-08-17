///  Limitation of values which  Color.fromARGB() method can take
class PossibleDataSetForColors {
  static const int _minValueForARGB = 0;
  static const int _maxValueForARGB = 255;
  static const int _numberOfDigitsToGenerate = 4;

  /// Get Minimum value that random integer can be
  /// (since RGBA takes from 0 to 255)
  static int get minValueForARGB => _minValueForARGB;

  /// Get Maximum value that random integer can be
  /// (since RGBA takes from 0 to 255)
  static int get maxValueForARGB => _maxValueForARGB;

  /// The quantity of numbers to be generated (since Color.fromRGBA takes 4...
  /// integers, only 4 digits will be generated),
  static int get numberOfDigitsToGenerate => _numberOfDigitsToGenerate;
}
