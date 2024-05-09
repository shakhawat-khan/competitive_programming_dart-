import 'dart:math';

void main() {
  // List<int> prices = [7, 1, 5, 3, 6, 4];
  maxProfit([7,6,4,3,1]);
}

int maxProfit(List<int> prices) {
  int one = prices[0];
  int result = 0;
  int count = 1;

  for (int i = count; i < prices.length; i++) {
    if (one < prices[i]) {
      result = max(result, prices[i] - one);
      // print(result);
    } else {
      one = prices[i];
      count++;
    }
  }
  print(result);
  return result;
}
