//
// import 'position.dart';
//
// void sortVertically(List<Position> items) {
//   var start = 0;
//   var end = items.length;
//   for (var pos = start + 1; pos < end; pos++) {
//     var min = start;
//     var max = pos;
//     var element = items[pos];
//     while (min < max) {
//       var mid = min + ((max - min) >> 1);
//       if (element.y < items[mid].y) {
//         max = mid;
//       } else {
//         min = mid + 1;
//       }
//     }
//     items.setRange(min + 1, pos + 1, items, min);
//     items[min] = element;
//   }
// }
//
// void sortSum(List<Position> items) {
//   var start = 0;
//   var end = items.length;
//   for (var pos = start + 1; pos < end; pos++) {
//     var min = start;
//     var max = pos;
//     var element = items[pos];
//     while (min < max) {
//       var mid = min + ((max - min) >> 1);
//       if (element.sum < items[mid].sum) {
//         max = mid;
//       } else {
//         min = mid + 1;
//       }
//     }
//     items.setRange(min + 1, pos + 1, items, min);
//     items[min] = element;
//   }
// }