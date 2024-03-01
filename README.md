## easy_logs

![License](https://img.shields.io/github/license/JotaPe-Tecnologia/easy-logs?logo=apache&logoColor=%23D22128&label=License&labelColor=%23FFFFFF&color=%23D22128)
![Package Version](https://img.shields.io/pub/v/easy_logs?logo=dart&logoColor=%230175C2&label=Version&labelColor=%23FFFFFF&color=%230175C2)
![Package Points](https://img.shields.io/pub/points/easy_logs?logo=dart&logoColor=%230175C2&label=Points&labelColor=%23FFFFFF&color=%230175C2)
![Coverage](https://img.shields.io/codecov/c/github/JotaPe-Tecnologia/easy-logs?logo=codecov&logoColor=%23F01F7A&label=Coverage&labelColor=%23FFFFFF&color=%23F01F7A)

---

## This is a simple package to log formatted messages on terminal easily with colors.

## Platform Support

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: | :-: | :---: | :-----: |
|   ✅    | ✅  |  ✅   | ✅  |  ✅   |   ✅    |

## Features

-   Error, Info, Success and Warning logs.
-   Error logs with Error and StackTrace.
-   Custom colors to log any type of message.

## Coming Soon

-   Default color to EasyLogs.log().
-   Custom DateTime format.
-   Custom sequence number format.
-   Custom ident level type.

## Usage

> easy_logs_example.dart

```dart
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
```
