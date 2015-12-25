int main() {           
int i = 5;             
while (i < 10)         
{                      
   if(++i == 7)        
       continue;       
   assert(i != 7);     
}                      
return 0;              
}