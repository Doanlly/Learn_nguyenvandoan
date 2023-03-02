import 'dart:collection';

class EntryItem extends LinkedListEntry<EntryItem> {
  final int id;
  final String text;
  EntryItem(this.id, this.text);

  @override
  String toString() {
    return '$id : $text';
  }
}

void main(){
  final linkedList = LinkedList<EntryItem>();
  linkedList.addAll(
      [EntryItem(1, 'A'), EntryItem(2, 'B'), EntryItem(3, 'C')]);
  print("Node đầu tiên ${linkedList.first} "); // 1 : A
  print("Node cuối cùng ${linkedList.last}"); // 3 : C
  print("LinkdedList ban đầu: $linkedList");
  // Thêm mục mới sau mục đầu tiên.
  linkedList.first.insertAfter(EntryItem(15, 'E'));
// Thêm mục mới trước mục cuối cùng.
  linkedList.last.insertBefore(EntryItem(10, 'D'));
  // Lặp lại các mục.
  print("LinkdedList: $linkedList");
  // for (var entry in linkedList) {
  //   print(entry);
  //   // 1 : A
  //   // 15 : E
  //   // 2 : B
  //   // 10 : D
  //   // 3 : C
  // }

  // Xóa mục bằng   index khỏi danh sách.
  linkedList.elementAt(2).unlink();
  print(linkedList); // (1 : A, 15 : E, 10 : D, 3 : C)
  // Xóa mục đầu tiên.
  linkedList.first.unlink();
  print(linkedList); // (15 : E, 10 : D, 3 : C)
  // Xóa mục cuối cùng khỏi danh sách.
  linkedList.remove(linkedList.last);
  print(linkedList); // (15 : E, 10 : D)
  // Xóa tất cả các mục.
  linkedList.clear();
  print(linkedList.length); // 0
  print(linkedList.isEmpty); // true
}