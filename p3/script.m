% ==============================================================================% ====================                 APARTADO:  1                =============% ====================                                             =============% ====================         Regresión Logística Multiclase      =============% ==============================================================================clear;warning('off', 'Octave:possible-matlab-short-circuit-operator');% ===================================================Seccion 1.1================load('ex3data1.mat');m = size(X,1);%Selecciona aleatoriamente 100 ejemplos:rand_indices = randperm(m);sel = X(rand_indices(1:100), :);displayData(sel);% ===================================================Seccion 1.2================la = 0.1;etiquetas = 10;[theta] = oneVsAll(X, y, etiquetas, la);pred = predict(theta, X);acc = mean(double(pred == y))*100;fprintf('\n Probabilidad de acierto de la regresión logística: %f%%\n', acc);% ==============================================================================% ====================                 APARTADO:  2                =============% ====================                                             =============% ====================               Redes Neuronales              =============% ==============================================================================load('ex3weights.mat');% Theta1 es de 25 x 401% Theta2 es de 10 x 26propag = neuralN(Theta1, Theta2, X);accN = mean(double(propag == y)) * 100;fprintf('\n Probabilidad de acierto de la red neuronal: %f%%\n', accN);