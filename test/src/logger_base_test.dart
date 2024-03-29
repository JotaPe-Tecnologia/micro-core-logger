import 'dart:async';

import 'package:micro_core_logger/micro_core_logger.dart';
import 'package:test/test.dart';

void main() {
  final logs = <String>[];
  // Zone to simulate output events
  final zoneSpec = ZoneSpecification(
    print: (_, __, ___, message) {
      logs.add(message);
    },
  );

  tearDown(logs.clear);

  group(
    'Logger.log() |',
    () {
      test(
        'Should show the correct message on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[30m$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger.log(message),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct message color on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[93m$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger.log(message, color: LoggerColor.brightYellow),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Level on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[30m\t\t\t\t$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger.log(message, level: 4),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct SequenceNumber on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[30m[ 4 ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger.log(message, sequenceNumber: 4),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Time on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final time = DateTime.now();
          final expected = '\x1B[30m[ ${time.toIso8601String()} ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger.log(message, time: time),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Settings on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final level = 8;
          final sequenceNumber = 4;
          final time = DateTime.now();
          final expected = '\x1B[93m\t\t\t\t\t\t\t\t[ $sequenceNumber ] [ ${time.toIso8601String()} ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger.log(
              message,
              color: LoggerColor.brightYellow,
              level: level,
              sequenceNumber: sequenceNumber,
              time: time,
            ),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );
    },
  );

  group(
    'logError() |',
    () {
      test(
        'Should show the correct message on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[31m$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logError(message),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Level on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[31m\t\t\t\t$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logError(message, level: 4),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct SequenceNumber on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[31m[ 4 ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logError(message, sequenceNumber: 4),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Time on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final time = DateTime.now();
          final expected = '\x1B[31m[ ${time.toIso8601String()} ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logError(message, time: time),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Settings on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final level = 8;
          final sequenceNumber = 4;
          final time = DateTime.now();
          final expected = '\x1B[31m\t\t\t\t\t\t\t\t[ $sequenceNumber ] [ ${time.toIso8601String()} ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logError(
              message,
              level: level,
              sequenceNumber: sequenceNumber,
              time: time,
            ),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );
    },
  );

  group(
    'logInfo() |',
    () {
      test(
        'Should show the correct message on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[36m$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logInfo(message),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Level on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[36m\t\t\t\t$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logInfo(message, level: 4),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct SequenceNumber on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[36m[ 4 ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logInfo(message, sequenceNumber: 4),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Time on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final time = DateTime.now();
          final expected = '\x1B[36m[ ${time.toIso8601String()} ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logInfo(message, time: time),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Settings on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final level = 8;
          final sequenceNumber = 4;
          final time = DateTime.now();
          final expected = '\x1B[36m\t\t\t\t\t\t\t\t[ $sequenceNumber ] [ ${time.toIso8601String()} ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logInfo(
              message,
              level: level,
              sequenceNumber: sequenceNumber,
              time: time,
            ),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );
    },
  );

  group(
    'logSuccess() |',
    () {
      test(
        'Should show the correct message on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[32m$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logSuccess(message),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Level on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[32m\t\t\t\t$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logSuccess(message, level: 4),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct SequenceNumber on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[32m[ 4 ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logSuccess(message, sequenceNumber: 4),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Time on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final time = DateTime.now();
          final expected = '\x1B[32m[ ${time.toIso8601String()} ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logSuccess(message, time: time),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Settings on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final level = 8;
          final sequenceNumber = 4;
          final time = DateTime.now();
          final expected = '\x1B[32m\t\t\t\t\t\t\t\t[ $sequenceNumber ] [ ${time.toIso8601String()} ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logSuccess(
              message,
              level: level,
              sequenceNumber: sequenceNumber,
              time: time,
            ),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );
    },
  );

  group(
    'logWarning() |',
    () {
      test(
        'Should show the correct message on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[33m$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logWarning(message),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Level on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[33m\t\t\t\t$message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logWarning(message, level: 4),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct SequenceNumber on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final expected = '\x1B[33m[ 4 ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logWarning(message, sequenceNumber: 4),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Time on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final time = DateTime.now();
          final expected = '\x1B[33m[ ${time.toIso8601String()} ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logWarning(message, time: time),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );

      test(
        'Should show the correct Settings on terminal when logged',
        () {
          // Arrange
          final message = 'Hello, World!';
          final level = 8;
          final sequenceNumber = 4;
          final time = DateTime.now();
          final expected = '\x1B[33m\t\t\t\t\t\t\t\t[ $sequenceNumber ] [ ${time.toIso8601String()} ] $message\x1B[0m';

          // Act
          runZoned<dynamic>(
            () => Logger().logWarning(
              message,
              level: level,
              sequenceNumber: sequenceNumber,
              time: time,
            ),
            zoneSpecification: zoneSpec,
          );

          // Assert
          expect(logs, equals([expected]));
        },
      );
    },
  );
}
