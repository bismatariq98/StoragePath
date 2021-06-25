import 'dart:async';

import 'package:flutter/services.dart';

class StoragePath {
  static const MethodChannel _channel = const MethodChannel('storage_path');

  static  get imagesPath async {
    final String data = await _channel.invokeMethod('getImagesPath');
    return data;
  }

  static  get videoPath async {
    final String data = await _channel.invokeMethod('getVideosPath');
    return data;
  }

  static  get audioPath async {
    final String data = await _channel.invokeMethod('getAudioPath');
    return data;
  }
  static  get filePath async {
    final String data = await _channel.invokeMethod('getFilesPath');
    return data;
  }
}
