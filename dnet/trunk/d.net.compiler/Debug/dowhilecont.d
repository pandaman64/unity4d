int main() {           
bool ok = false;       
do                     
{                      
       ok = true;      
       continue;       
} while (false);       
assert(ok);            
return 0;              
}