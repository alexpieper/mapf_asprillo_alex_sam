%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Grid Size X:                      4
% Grid Size Y:                      4
% Number of Nodes:                  16
% Number of Robots:                 2
% Number of Shelves:                2
% Number of picking stations:       1
% Number of products:               2
% Number of product units in total: 2
% Number of orders:                 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

init(object(order,1),value(line,(1,1))).
init(object(order,1),value(pickingStation,1)).
init(object(order,2),value(line,(2,1))).
init(object(order,2),value(pickingStation,1)).
