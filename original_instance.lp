#program base.

#const xsize = 4.
#const ysize = 4.

init(object(node, (X,Y)), value(at, (X,Y))) :- X=1..xsize, Y=1..ysize.

init(object(robot,1),value(at,(1,4))).
init(object(robot,2),value(at,(4,4))).

init(object(shelf,1),value(at,(1,2))).
init(object(shelf,2),value(at,(4,2))).

init(object(product,1),value(on,(1,1))).
init(object(product,2),value(on,(2,1))).

init(object(pickingStation,1),value(at,(2,1))).

init(object(order,1),value(line,(1,1))).
init(object(order,1),value(pickingStation,1)).
init(object(order,2),value(line,(2,1))).
init(object(order,2),value(pickingStation,1)).
