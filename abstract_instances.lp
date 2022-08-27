#program base.

#const xsize = 4.
#const ysize = 4.

init(object(node, (X,Y)), value(at, (X,Y))) :- X=1..xsize, Y=1..ysize.

init(object(robot,1),value(at,(1,4))).
init(object(robot,2),value(at,(4,4))).

init(object(shelf,1),value(at,(1,1))).
init(object(shelf,2),value(at,(4,1))).

init(object(product,1),value(on,(1,1))).
init(object(product,2),value(on,(2,1))).

init(object(pickingStation,1),value(at,(2,1))).

init(object(order,1),value(line,(1/3,1))).
init(object(order,1),value(pickingStation,1)).
init(object(order,2),value(line,(2,1))).
init(object(order,2),value(pickingStation,1)).



% this line creates the abstracted nodes (works with any even xsize and ysize)
init(object(abstract_node, (X2/2,Y2/2)), value(at, (X2/2,Y2/2))) :- init(object(node, (X1,Y1)), value(at, (X1,Y1))), init(object(node, (X1,Y2)), value(at, (X1,Y2))), init(object(node, (X2,Y1)), value(at, (X2,Y1))), init(object(node, (X2,Y2)), value(at, (X2,Y2))), X2>X1, Y2>Y1.

% this creates the new abstract robots positions
init(object(abstract_robot,N),value(at,((X+1)/2,(Y+1)/2))) :- init(object(robot,N),value(at,(X,Y))).

% this create the rest of the entites
init(object(abstract_shelf,N),value(at,((X+1)/2,(Y+1)/2))) :- init(object(shelf,N),value(at,(X,Y))).
init(object(abstract_product,N),value(at,((X+1)/2,(Y+1)/2))) :- init(object(product,N),value(at,(X,Y))).
init(object(abstract_pickingStation,N),value(at,((X+1)/2,(Y+1)/2))) :- init(object(pickingStation,N),value(at,(X,Y))).
init(object(abstract_order,N),value(at,((X+1)/2,(Y+1)/2))) :- init(object(order,N),value(at,(X,Y))).


