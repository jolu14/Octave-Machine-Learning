data = load('ex2data1.txt', '-ascii');y = data(:,3);x = data(:,1:2);X = [ones(rows(y),1), x];[J, grad] = coste([0;0;0], x, y);  %J=0.693  %grad = [-0.10; -12.009; -11.262]opciones = optimset('GradObj', 'on', 'MaxIter', 400);[theta, cost] = fminunc(@(t)(coste(t, x, y)), [0;0;0], opciones);plotDecisionBoundary(theta, X, y);accuracy = acc(theta, X, y);fprintf ("Se predice correctamente un %d%% de los casos de prueba.\n", accuracy)  %accuracy = 89.00%            %PRACTICA 3  % 1.3 LAMBDA = 0.1  %     96.46%  % 2   97.52%