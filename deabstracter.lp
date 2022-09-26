
% find max timestep
t(T) :- occurs(object(robot, ID), action(move,(X,Y)), T).
max_t(T) :- t(T), #max{TT, 1:t(TT)}=T.

% assume goal is reachable by changing direction max 1 time
% mark the first and second direction for each robot
first((X, Y), ID) :- occurs(object(robot, ID), action(move,(X,Y)), 1).
second((X2, Y2), ID) :- occurs(object(robot, ID), action(move,(X2,Y2)), T), max_t(T), first((X,Y), ID2), X!=X2, Y!=Y2, ID !=ID2.
    
% encode moves into single integer to be able to count them
move(1,ID, T):-  occurs(object(robot, ID), action(move,(X,Y)), T), X=0, Y=-1.
move(2,ID, T):-  occurs(object(robot, ID), action(move,(X,Y)), T), X=1, Y=0.
move(3,ID, T):-  occurs(object(robot, ID), action(move,(X,Y)), T), X=-1, Y=0.
move(4,ID, T):-  occurs(object(robot, ID), action(move,(X,Y)), T), X=0, Y=1.

% count repetitions of each move for each robot
count((0,-1),ID, N) :- move(1,ID, _), N = #count{move(1,ID, T): occurs(object(robot, ID), action(move,(0,-1)), T) }, N>0.
count((1, 0),ID, N) :- move(1,ID, _), N = #count{move(1,ID, T): occurs(object(robot, ID), action(move,(1,0)), T) }, N>0.
count((-1, 0),ID, N) :- move(1,ID, _), N = #count{move(1,ID, T): occurs(object(robot, ID), action(move,(-1,0)), T) }, N>0.
count((0, 1),ID, N) :- move(1,ID, _), N = #count{move(1,ID, T): occurs(object(robot, ID), action(move,(0,1)), T) }, N>0.

% set the target number of moves in deabstracted solution
goal((X, Y), ID, N*2) :- count((X, Y), ID, N).

% set the range of time-steps for each move for each robot
range((X,Y), ID, (1, M)) :- first((X,Y), ID), goal((X, Y), ID, M).
range((X2,Y2), ID, (M+1, M+M2)) :- second((X2,Y2), ID), goal((X2, Y2), ID, M2), first((X,Y), _), goal((X, Y),_, M).

%finally generate the motion commands based on the range set
new_occurs(object(robot, ID), action(move, (X, Y)), A) :- range((X,Y), ID, (A, _)).
new_occurs(object(robot, ID), action(move, (X, Y)), T+1)  :- new_occurs(object(robot, ID), action(move, (X, Y)), T), range((X,Y), ID, (_, B)), T<B.
