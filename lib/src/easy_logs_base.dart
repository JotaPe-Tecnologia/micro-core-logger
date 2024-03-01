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

import 'enums/easy_logs_color.dart';
import 'interfaces/easy_logs_options.dart';

export 'enums/easy_logs_color.dart';

/// Class that handles the logging.
final class EasyLogs implements EasyLogsOptions {
  @override
  void logError(
    Object? message, {
    int level = 0,
    int? sequenceNumber,
    DateTime? time,
    Zone? zone,
  }) {
    return log(
      message,
      color: EasyLogsColor.red,
      level: level,
      sequenceNumber: sequenceNumber,
      time: time,
      zone: zone,
    );
  }

  @override
  void logInfo(
    Object? message, {
    int level = 0,
    int? sequenceNumber,
    DateTime? time,
    Zone? zone,
  }) {
    return log(
      message,
      color: EasyLogsColor.cyan,
      level: level,
      sequenceNumber: sequenceNumber,
      time: time,
      zone: zone,
    );
  }

  @override
  void logSuccess(
    Object? message, {
    int level = 0,
    int? sequenceNumber,
    DateTime? time,
    Zone? zone,
  }) {
    return log(
      message,
      color: EasyLogsColor.green,
      level: level,
      sequenceNumber: sequenceNumber,
      time: time,
      zone: zone,
    );
  }

  @override
  void logWarning(
    Object? message, {
    int level = 0,
    int? sequenceNumber,
    DateTime? time,
    Zone? zone,
  }) {
    return log(
      message,
      color: EasyLogsColor.yellow,
      level: level,
      sequenceNumber: sequenceNumber,
      time: time,
      zone: zone,
    );
  }

  /// The default method to log the messages on terminal.
  static void log(
    Object? message, {
    EasyLogsColor color = EasyLogsColor.black,
    int level = 0,
    int? sequenceNumber,
    DateTime? time,
    Zone? zone,
  }) {
    final levelString = level > 0 ? '\t' * level : '';
    final sequenceColored = sequenceNumber != null ? '[ $sequenceNumber ] ' : '';
    final timeColored = time != null ? '[ ${time.toIso8601String()} ] ' : '';

    final settingsString = '$levelString$sequenceColored$timeColored';

    print('\x1B[${color.asANSI}m$settingsString${message.toString()}\x1B[0m');
  }
}
