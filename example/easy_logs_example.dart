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

import 'package:easy_logs/easy_logs.dart';

void main() {
  // + Generics
  // - Generic Log (Default Black)
  EasyLogs.log('Hello World!');
  // - Generic Log with color
  EasyLogs.log('Hello World!', color: EasyLogsColor.brightMagenta);
  // - Generic Log with level
  EasyLogs.log('Hello World!', level: 1);
  // - Generic Log with sequence number
  EasyLogs.log('Hello World!', sequenceNumber: 4);
  // - Generic Log with time
  EasyLogs.log('Hello World!', time: DateTime.now());
  // - Generic Log with everything
  EasyLogs.log(
    'Hello World!',
    color: EasyLogsColor.brightMagenta,
    level: 1,
    sequenceNumber: 4,
    time: DateTime.now(),
  );
  
  final logger = EasyLogs();

  // + Logging Errors
  // - Error Log
  logger.logError('Hello World!');
  // - Error Log with level
  logger.logError('Hello World!', level: 1);
  // - Error Log with sequence number
  logger.logError('Hello World!', sequenceNumber: 4);
  // - Error Log with time
  logger.logError('Hello World!', time: DateTime.now());
  // - Error Log with everything
  logger.logError(
    'Hello World!',
    level: 1,
    sequenceNumber: 4,
    time: DateTime.now(),
  );

  // + Logging Infos
  // - Info Log
  logger.logInfo('Hello World!');
  // - Info Log with level
  logger.logInfo('Hello World!', level: 1);
  // - Info Log with sequence number
  logger.logInfo('Hello World!', sequenceNumber: 4);
  // - Info Log with time
  logger.logInfo('Hello World!', time: DateTime.now());
  // - Info Log with everything
  logger.logInfo(
    'Hello World!',
    level: 1,
    sequenceNumber: 4,
    time: DateTime.now(),
  );

  // + Logging Successes
  // - Success Log
  logger.logSuccess('Hello World!');
  // - Success Log with level
  logger.logSuccess('Hello World!', level: 1);
  // - Success Log with sequence number
  logger.logSuccess('Hello World!', sequenceNumber: 4);
  // - Success Log with time
  logger.logSuccess('Hello World!', time: DateTime.now());
  // - Success Log with everything
  logger.logSuccess(
    'Hello World!',
    level: 1,
    sequenceNumber: 4,
    time: DateTime.now(),
  );

  // + Logging Warnings
  // - Warning Log
  logger.logWarning('Hello World!');
  // - Warning Log with level
  logger.logWarning('Hello World!', level: 1);
  // - Warning Log with sequence number
  logger.logWarning('Hello World!', sequenceNumber: 4);
  // - Warning Log with time
  logger.logWarning('Hello World!', time: DateTime.now());
  // - Warning Log with everything
  logger.logWarning(
    'Hello World!',
    level: 1,
    sequenceNumber: 4,
    time: DateTime.now(),
  );
}
