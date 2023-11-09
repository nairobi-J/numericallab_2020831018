function s = task_103 (input1,input2)

  function [y, dy] = f(x)
    y = x.^3 - x - 2;
    dy = 3 * x.^2 - 1;
  end
  x0 = 1;
  e = 1e-6;
  A = [];
  tangent = [];

  while true
      [y, dy] = f(x0);
      x1 = x0 - y / dy;
      A =[A; x1];
      tangent = [tangent; [x0, y, dy]];
      if abs(x0 - x1) < e
        break;
      end
      x0 = x1;
  end

   fprintf('%f\n', A(end));


  x = linspace(1, 3, 50);
  [y, dy] = f(x);
  y = f(x);
  plot (x, y, 'k');
  grid on;
  hold on;
  plot(A, f(A), 'rd');
  for i = 1 : length(A)
    x_tangent = A(i) - 1:0.01:A(i) + 1;
    y_tangent = tangent(i, 2) + tangent(i, 3) * (x_tangent - A(i));
    plot (x_tangent, y_tangent, 'b:');
  end

  xlabel('x');
  ylabel('y using x');
  title('Newton-Raphson Method');
  legend('function values ', 'Roots','Tangent Lines');


endfunction
