// LinkedList : Sắp xếp theo 1 trình tự tuyến tính, 1 chiều.
// Node: - Giữ 1 giá trị
//       - Giữ 1 giá trị tham chiếu đến nút tiếp theo
// import 'package:starter/linked_list.dart';

// class Node<T> {
//   Node({required this.value, this.next});
//   T value;
//   Node<T>? next;
// }
// void main(){
// 	final node1 = Node(value: 1);
// 	final node2 = Node(value: 2);
// 	final node3 = Node(value: 3);

// 	node1.next = node2;
// 	node2.next = node3;

// 	print(node1);
// }
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