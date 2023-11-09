function s = task_101 ()

   A = input("Matrix A : ");
   B = input("Matrix B : ");
   max_A = max (max (A));
   fprintf ("Maximum value of A : %d\n", max_A);
   if size (A,2) == size (B,1)
      Mul = A * B;
      fprintf("Multiplication :\n");
      disp (Mul);
   else
      fprintf ("Matrix multiplication is not possible!\n");
   end

endfunction
