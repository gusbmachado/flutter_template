import 'dart:io';

import 'package:flutter_template/utils/formatting.dart';
import 'package:path_provider/path_provider.dart';

Future<Directory> getCacheDir() async {
  final Directory cacheDir = await getApplicationCacheDirectory();
  return cacheDir;
}

Future<File> getCacheFile(String filename) async {
  final Directory cacheDir = await getCacheDir();
  final File cacheFile = File('${cacheDir.path}/$filename');
  return cacheFile;
}

Future<void> deleteFromCache(String filename) async {
  final File file = await getCacheFile(filename);
  try {
    await file.delete();
    print('File ${file.path} deleted from cache');
  } catch (e) {
    print('Error on deleting to cache: $e');
  }
}

Future<void> writeToCache(String filename, String content) async {
  final File file = await getCacheFile(filename);
  try {
    await file.writeAsString(content);
    print('Data written to cache: ${file.path}');
  } catch (e) {
    print('Error writing to cache: $e');
  }
}

Future<void> writeBytesToCache(String filename, List<int> bytes) async {
  final File file = await getCacheFile(filename);
  try {
    await file.writeAsBytes(bytes);
    print('Bytes written to cache: ${file.path}');
  } catch (e) {
    print('Error writing bytes to cache: $e');
  }
}

Future<String?> readStringFromCache(String filename) async {
  final File file = await getCacheFile(filename);
  try {
    if (await file.exists()) {
      final String contents = await file.readAsString();
      print('String read from cache: ${file.path}');
      // Remove leading/trailing quotes
      String cleanedContents = contents.replaceAll('"', '').trim();
      print('Cleaned string: $cleanedContents'); // Debugging
      return fixMalformedJsonString(cleanedContents);
    } else {
      print('Cache file not found: ${file.path}');
      return null;
    }
  } catch (e) {
    print('Error reading string from cache: $e');
    return null;
  }
}

Future<List<int>?> readBytesFromCache(String filename) async {
  final File file = await getCacheFile(filename);
  try {
    if (await file.exists()) {
      final List<int> bytes = await file.readAsBytes();
      print('Bytes read from cache: ${file.path}');
      return bytes;
    } else {
      print('Cache file not found: ${file.path}');
      return null;
    }
  } catch (e) {
    print('Error reading bytes from cache: $e');
    return null;
  }
}
