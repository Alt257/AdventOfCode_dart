import 'dart:io';

import 'package:dotenv/dotenv.dart';

sealed class Environment {
  // Change this to DotEnv to match the library's type, or keep it as a Map wrapper
  static late final DotEnv _env;

  static Future<void> load() async {
    final envFile = '.env';
    final envLocalFile = '.env.local';
    // dotenv doesn't support an "overrideWithFiles" list directly in the standard package
    // like flutter_dotenv does, but you can load specific files.

    _env = DotEnv(includePlatformEnvironment: true)..load([envFile]);

    // If you want to handle .env.local explicitly, you can check if it exists
    // or try loading it, but standard usage usually involves one load call or checking file existence.
    try {
      if (await File(envLocalFile).exists()) {
        _env.load([envLocalFile]); // This will merge/override
      }
    } catch (e, s) {
      // Ignore if local file doesn't exist or handle error
      print('Error loading $envLocalFile: $e\n$s');
    }
  }

  static bool isDefined(String key) => _env.isDefined(key);

  static String read(String key) {
    // The dotenv package returns the value or undefined.
    // Accessing via map operator [] is the standard way.
    final value = _env[key];

    if (value == null) throw Exception('$key environment variable not found or is null');
    return value;
  }
}
