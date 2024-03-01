// Copyright 2024 JotapeTecnologia

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

//     http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import '../enums/easy_logs_color.dart';

/// The available options to log messages.
abstract interface class EasyLogsOptions {
  /// The method that should be used to log error messages.
  ///
  /// By default the color of this log will be [EasyLogsColor.red].
  void logError(
    String message, {
    int level = 0,
    int? sequenceNumber,
    DateTime? time,
    Zone? zone,
  });

  /// The method that should be used to log info messages.
  ///
  /// By default the color of this log will be [EasyLogsColor.cyan].
  void logInfo(String message, {
    int level = 0,
    int? sequenceNumber,
    DateTime? time,
    Zone? zone,
  });

  /// The method that should be used to log success messages.
  ///
  /// By default the color of this log will be [EasyLogsColor.green].
  void logSuccess(String message, {
    int level = 0,
    int? sequenceNumber,
    DateTime? time,
    Zone? zone,
  });

  /// The method that should be used to log warning messages.
  ///
  /// By default the color of this log will be [EasyLogsColor.yellow].
  void logWarning(String message, {
    int level = 0,
    int? sequenceNumber,
    DateTime? time,
    Zone? zone,
  });
}
