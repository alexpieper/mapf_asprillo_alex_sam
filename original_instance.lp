#program base.

#const xsize = 4.
#const ysize = 4.

init(object(raw_node, (X,Y)), value(at, (X,Y))) :- X=1..xsize, Y=1..ysize.

init(object(raw_robot,1),value(at,(1,4))).
init(object(raw_robot,2),value(at,(4,4))).

init(object(raw_shelf,1),value(at,(1,1))).
init(object(raw_shelf,2),value(at,(4,1))).

init(object(raw_product,1),value(on,(1,1))).
init(object(raw_product,2),value(on,(2,1))).

init(object(raw_pickingStation,1),value(at,(2,1))).

init(object(raw_order,1),value(line,(1/3,1))).
init(object(raw_order,1),value(pickingStation,1)).
init(object(raw_order,2),value(line,(2,1))).
init(object(raw_order,2),value(pickingStation,1)).
