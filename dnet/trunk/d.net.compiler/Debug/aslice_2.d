int main() {
 int a[] = [1, 2, 3, 4, 5, 6];
 assert(a.length == 6);      
 int b[] = a[2..5];          
 assert(b[0] == 3);          
 int c[] = b;                
 c[3] = 0;                   
 return -1;                  
}
