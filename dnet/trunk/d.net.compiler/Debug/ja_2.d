int b[2][3][4][5];
void main() { 
 for (int i = 0; i != 2; ++i)
 {
      for (int j = 0; j != 3; ++j)
      {
	    for (int k = 0; k != 4; ++k)
	    {
             for (int n = 0; n != 5; ++n)
                 b[i][j][k][n] = i + j + k + n;
         }
     }
 }
 for (int i = 0; i != 2; ++i)
 {
      for (int j = 0; j != 3; ++j)
      {
	    for (int k = 0; k != 4; ++k)
	    {
             for (int n = 0; n != 5; ++n)
                 assert(b[i][j][k][n] == i + j + k + n);
         }
     }
 }
}
