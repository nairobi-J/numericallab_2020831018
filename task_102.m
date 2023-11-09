function s = task_102 ()

  function y = f(x)
    y = x.^3 - 4*x - 9;
  end
  a = 2;
  b = 3;
  lim = 0.000001;
  A = [];
 c = (a + b) / 2;
  while abs(f(c)) > lim

      A = [A; c];
       c = (a + b) / 2;
      if f (c) == 0
        break;
      elseif f(a) * f(c) < 0
        b = c;
      else f (b) * f(c) < 0
        a = c;
      end
    end
  fprintf ('%f\n', A (end));

  x = linspace(1, 4, 50);
  y = f(x);
  plot (x, y, 'k');
  grid on;
  hold on;
  plot(A, f(A), 'rd');
  xlabel('Values of x');
  ylabel('Values of function');
  title('Bisection Method');
  legend('function ', 'x');


endfunction
