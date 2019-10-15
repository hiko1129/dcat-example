import 'package:dcat/dcat.dart' as dcat;
import 'dart:io';
import 'package:args/args.dart';

const lineNumber = 'line-number';

ArgResults argResults;

void main(List<String> arguments) {
  exitCode = 0; // presume success
  final parser = ArgParser()
    ..addFlag(lineNumber, negatable: false, abbr: 'n');

  argResults = parser.parse(arguments);
  final paths = argResults.rest;

  dcat.dcat(paths, argResults[lineNumber] as bool);
}

