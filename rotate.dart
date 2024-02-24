import 'dart:ffi';
import 'dart:io';

void rotate(List matrix) {
  final int n = matrix.length;
  for (int i = 0; i < n; i++) {
    for (int j = i; j < n; j++) {
      int temp = matrix[i][j];
      matrix[i][j] = matrix[j][i];
      matrix[j][i] = temp;
    }
  }

  // ye loop matrix ko reverse krdyga
  for (int i = 0; i < n; i++) {
    matrix[i].reversed;//ye built-in function h
  }
}

void main() {
  List matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  print('Original Matrix:');
  for (int i = 0; i < matrix.length; i++) {
    print(matrix[i]);
  }
  rotate(matrix);
  print('\nMatrix After 90 Degree Clockwise Rotation:');
  for (int i = 0; i < matrix.length; i++) {
    print(matrix[i]);
  }
}
