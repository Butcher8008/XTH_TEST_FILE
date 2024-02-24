int minJumps(List<int> arr) {
  int n = arr.length;

  // If the array is empty or has only one element, no jumps are needed
  if (n <= 1) return 0;

  // Initialize an array to store the minimum jumps needed to reach each index
  List<int> jumps = List<int>.filled(n, 0);

  // If the first element is 0, it is not possible to reach the end
  if (arr[0] == 0) return -1;

  // Initialize the first jump
  jumps[0] = 0;

  // Find the minimum jumps needed to reach each index
  for (int i = 1; i < n; i++) {
    jumps[i] = double.infinity.toInt(); // Initialize to infinity

    for (int j = 0; j < i; j++) {
      // Check if it is possible to jump from index j to index i
      if (j + arr[j] >= i && jumps[j] != double.infinity.toInt()) {
        jumps[i] = jumps[j] + 1;
        break;
      }
    }
  }

  // If the value at the last index is infinity, it is not possible to reach the end
  if (jumps[n - 1] == double.infinity.toInt()) return -1;

  // Otherwise, return the minimum jumps needed to reach the end
  return jumps[n - 1];
}

void main() {
  List<int> arr = [2, 3, 1, 1, 2, 4, 2, 0, 1, 1];

  int result = minJumps(arr);

  if (result != -1) {
    print('Minimum jumps needed: $result');
  } else {
    print('It is not possible to reach the end.');
  }
}
