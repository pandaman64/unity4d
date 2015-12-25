int main() {           
int i = 5;             
bool ok = false;       
if (i)                 
{                      
    ok = true;         
}                      
else if (i < 6)        
   ok = false;         
assert(ok);            
return 0;              
}