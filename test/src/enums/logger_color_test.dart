import 'package:micro_core_logger/micro_core_logger.dart';
import 'package:test/test.dart';

void main() {
  group(
    'asANSI() |',
    () {
      test(
        'Should return the correct ANSI number when the color is black.',
        () {
          // Arrange
          final expectedANSI = 30;
          final color = LoggerColor.black;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is blue.',
        () {
          // Arrange
          final expectedANSI = 34;
          final color = LoggerColor.blue;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is brightBlack.',
        () {
          // Arrange
          final expectedANSI = 90;
          final color = LoggerColor.brightBlack;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is brightBlue.',
        () {
          // Arrange
          final expectedANSI = 94;
          final color = LoggerColor.brightBlue;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is brightCyan.',
        () {
          // Arrange
          final expectedANSI = 96;
          final color = LoggerColor.brightCyan;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is brightGreen.',
        () {
          // Arrange
          final expectedANSI = 92;
          final color = LoggerColor.brightGreen;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is brightMagenta.',
        () {
          // Arrange
          final expectedANSI = 95;
          final color = LoggerColor.brightMagenta;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is brightRed.',
        () {
          // Arrange
          final expectedANSI = 91;
          final color = LoggerColor.brightRed;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is brightWhite.',
        () {
          // Arrange
          final expectedANSI = 97;
          final color = LoggerColor.brightWhite;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is brightYellow.',
        () {
          // Arrange
          final expectedANSI = 93;
          final color = LoggerColor.brightYellow;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is cyan.',
        () {
          // Arrange
          final expectedANSI = 36;
          final color = LoggerColor.cyan;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is green.',
        () {
          // Arrange
          final expectedANSI = 32;
          final color = LoggerColor.green;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is magenta.',
        () {
          // Arrange
          final expectedANSI = 35;
          final color = LoggerColor.magenta;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is red.',
        () {
          // Arrange
          final expectedANSI = 31;
          final color = LoggerColor.red;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is white.',
        () {
          // Arrange
          final expectedANSI = 37;
          final color = LoggerColor.white;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );

      test(
        'Should return the correct ANSI number when the color is yellow.',
        () {
          // Arrange
          final expectedANSI = 33;
          final color = LoggerColor.yellow;

          // Act
          final result = color.asANSI;

          // Assert
          expect(result, expectedANSI);
        },
      );
    },
  );
}
