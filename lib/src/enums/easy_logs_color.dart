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

/// The color to use on the logs.
enum EasyLogsColor {
  black(30),
  blue(34),
  brightBlack(90),
  brightBlue(94),
  brightCyan(96),
  brightGreen(92),
  brightMagenta(95),
  brightRed(91),
  brightWhite(97),
  brightYellow(93),
  cyan(36),
  green(32),
  magenta(35),
  red(31),
  white(37),
  yellow(33);

  /// The ANSI code for the color.
  final int asANSI;

  const EasyLogsColor(this.asANSI);
}
