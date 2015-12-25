int main() {           
int i = 5;             
bool ok = false;       
if (!i)                
{                      
    ok = false;        
}                      
else if (i < 6)        
   ok = true;          
assert(ok);            
return 0;              
}