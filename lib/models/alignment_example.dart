import 'package:flutter/material.dart';

class AlignmentExample {
  const AlignmentExample({
    required this.title,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final String title;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
}

const mainAxisExamples = [
  AlignmentExample(
    title: 'MainAxisAlignment.center',
    mainAxisAlignment: MainAxisAlignment.center,
  ),
  AlignmentExample(
    title: 'MainAxisAlignment.spaceAround',
    mainAxisAlignment: MainAxisAlignment.spaceAround,
  ),
  AlignmentExample(
    title: 'MainAxisAlignment.spaceBetween',
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
  ),
  AlignmentExample(
    title: 'MainAxisAlignment.spaceEvenly',
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  ),
  AlignmentExample(
    title: 'MainAxisAlignment.start',
    mainAxisAlignment: MainAxisAlignment.start,
  ),
  AlignmentExample(
    title: 'MainAxisAlignment.end',
    mainAxisAlignment: MainAxisAlignment.end,
  ),
];

const crossAxisExamples = [
  AlignmentExample(
    title: 'CrossAxisAlignment.start',
    crossAxisAlignment: CrossAxisAlignment.start,
  ),
  AlignmentExample(
    title: 'CrossAxisAlignment.end',
    crossAxisAlignment: CrossAxisAlignment.end,
  ),
  AlignmentExample(
    title: 'CrossAxisAlignment.baseline',
    crossAxisAlignment: CrossAxisAlignment.baseline,
  ),
  AlignmentExample(
    title: 'CrossAxisAlignment.center',
    crossAxisAlignment: CrossAxisAlignment.center,
  ),
  AlignmentExample(
    title: 'CrossAxisAlignment.stretch',
    crossAxisAlignment: CrossAxisAlignment.stretch,
  ),
];
