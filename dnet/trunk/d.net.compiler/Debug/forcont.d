int main() {           
int i = 5;             
for (; i; i--)         
{                      
   if (i==3) continue; 
   assert(i != 3);     
}                      
assert(i == 0);        
return 0;              
}