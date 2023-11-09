function s = task_103 (input1, input2)

  function y = d(x)
    y = x.^3 - 4*x - 9;
  end
  a = 2;
  b = 3;
  lim = 1e-6;
  A = [];

  while (b - a ) / 2 > lim
      c = (a * d(b) - b * d(a)) / (d(b) - d(a));
      A =[A; c];
      if d(c) == 0
        break;
      elseif d(a) * d(c) < 0
        b = c;
      else d(b) * d(c) < 0
        a = c;
      end
    end
   fprintf ('%f\n', A (end));


  x = linspace (1, 4, 50);
  y = d(x);
  plot (x, y, 'k');
  grid on;
  hold on;
  plot(A, d(A), 'rd');
  xlabel('x');
  ylabel('y(using x)');
  title('False Position Method');
  legend('Function ', 'x');


endfunction
