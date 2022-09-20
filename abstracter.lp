

% this line creates the abstracted nodes (works with any even xsize and ysize)
init(object(node, (X2/2,Y2/2)), value(at, (X2/2,Y2/2))) :- init(object(raw_node, (X1,Y1)), value(at, (X1,Y1))), init(object(raw_node, (X1,Y2)), value(at, (X1,Y2))), init(object(raw_node, (X2,Y1)), value(at, (X2,Y1))), init(object(raw_node, (X2,Y2)), value(at, (X2,Y2))), X2>X1, Y2>Y1.

% this creates the new abstract robots positions
init(object(robot,N),value(at,((X+1)/2,(Y+1)/2))) :- init(object(raw_robot,N),value(at,(X,Y))).

% this create the rest of the entites
init(object(shelf,N),value(at,((X+1)/2,(Y+1)/2))) :- init(object(raw_shelf,N),value(at,(X,Y))).
init(object(product,N),value(at,((X+1)/2,(Y+1)/2))) :- init(object(raw_product,N),value(at,(X,Y))).
init(object(pickingStation,N),value(at,((X+1)/2,(Y+1)/2))) :- init(object(raw_pickingStation,N),value(at,(X,Y))).
init(object(order,N),value(at,((X+1)/2,(Y+1)/2))) :- init(object(raw_order,N),value(at,(X,Y))).
    
%maybe try to only show the atoms, that dont have raw in them 
%#show init/2.
