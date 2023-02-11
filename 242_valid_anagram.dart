
void main(List<String> args) {
  //Solution().isAnagram('card', 'rat');

  print(Solution().isAnagram('anagrm', 'nagaram'));
}

class Solution {
  bool areListsEqual(var list1, var list2) {
    // check if both are lists
    if (!(list1 is List && list2 is List)
        // check if both have same length
        ||
        list1.length != list2.length) {
      return false;
    }

    // check if elements are equal
    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) {
        return false;
      }
    }

    return true;
  }

  bool isAnagram(String s, String t) {
    final temp = s.split('');
    final temp1 = t.split('');

    final test1 = temp..sort();

    final test = temp1..sort();

    print(test);
    print(test1);

    return areListsEqual(test1, test);

    //final test2 = temp1.sort();
  }
}
