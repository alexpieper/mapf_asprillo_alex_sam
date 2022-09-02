x(1..9).
max_x(X) :- x(X), #max {XX,1:x(XX)} = X.
    
%:- x_max(X), x_max(Y), X==.
