// langkah 1
// void main(){
//   for (Index = 10; index < 27; index) {
//   print(Index); //error dikarenakan nama variabel tidak sama dan tidak ada increment
// }
// }
//langkah 2 pembenaran error
// void main(){
//   for (int Index = 10; Index < 27; Index++) {
//   print(Index); //error dikarenakan nama variabel tidak sama 
// }
// }
//langkah 3
void main(){
  for (int Index = 10; Index < 27; Index++) {
    if (Index == 21) break;
    else if (Index > 1 || Index < 7) continue;
    print(Index);
  }
}