import 'package:test_project/data/possible_dataset_for_colors.dart';
import 'package:test_project/services/network_helper.dart';

/// URL to True Random Generator API https://www.random.org/
const String urlForRandomNumAPI = 'https://www.random.org';

/// Type of numbers to be generated, for more see: https://www.random.org/
const String dataType = 'integers';

/// The quantity of numbers to be generated (since Color.fromRGBA takes 4...
/// integers, only 4 digits will be generated),
final int numbersToGenerate = PossibleDataSetForColors.numberOfDigitsToGenerate;

/// Minimum value that random integer can be (since RGBA takes from 0 to 255)
final int min = PossibleDataSetForColors.minValueForARGB;

/// Maximum value that random integer can be (since RGBA takes from 0 to 255)
final int max = PossibleDataSetForColors.maxValueForARGB;

/// Format of response, for more see: https://www.random.org/
const String responseFormat = 'plain';

/// Class for managing with random numbers
class RandomNumbers {
  /// Method returns a Future<List<String>>, which contains random integers
  Future<List<String>> getRandomNumbers() async {
    final NetworkHelper networkHelper = NetworkHelper(
      url:
          '$urlForRandomNumAPI/$dataType/?num=$numbersToGenerate&min=$min&max=$max&col=1&base=10&format=$responseFormat&rnd=new',
    );
    final randomNumbers = await networkHelper.getData();

    return randomNumbers.split(' ').toList().first.split('\n');
  }
}
