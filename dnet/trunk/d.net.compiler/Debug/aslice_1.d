void main() {
 int a[] = [1, 2, 3, 4, 5];  
 assert(a.length == 5);      
 int b[] = a[2..5];          
 assert(b[0] == 3);          
 int c[] = b;                
 assert(c[0] == 3);          
 c[0] = 0;                   
 assert(a[2] == 0);          
}
