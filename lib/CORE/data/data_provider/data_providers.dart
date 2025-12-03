import 'package:advent_of_code__dart/CORE/instance_provider.dart';

import 'advent_of_code_website/advent_of_code_website.dart';

sealed class DataProviders {

  static get aocWebsite => InstanceProvider.getInstance(
    () => AdventOfCodeWebsiteDataProvider()
  );
}