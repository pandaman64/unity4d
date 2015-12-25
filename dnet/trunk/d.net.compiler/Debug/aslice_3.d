void main() {
 int a[]=[1, 2, 3, 4, 5, 6]; 
 int b[6];                   
 int c[];                    
 b[] = a;                    
 assert(b[2] == 3);          
 c = a;                      
 assert(c[1] == 2);          
}
