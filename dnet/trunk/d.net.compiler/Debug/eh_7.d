int main() {
 for (int i; i != 10; ++i) {
   try {
       if (i == 5) break;
   }
   catch (Exception) {
   }
 }
 return 0;
}
