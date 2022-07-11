# Asprilo MAPF Project
Authors: Alexander Pieper, Samuel Rodriguez

## Installation

Please follow the installation steps on `https://asprilo.github.io` for the setup of asprilo

## Create Instances
To create an example instance, run the shell script `bash make_instance.bash`. A folder with the name `generatedInstances` and one file with the `.lp` extension should have appeared.

This is a very inital version of 'getting something to run'

## 1. Start the solver:
In a terminal, open the Project and move into the directory `m`. The run the following:

`viz-solver --port 5001`

The solver is now listening on localhost.

## 2. Visualize an instance
from the project, run the following in a new terminal:

`viz -t generatedInstances/x9_y6_n54_r2_s6_ps1_pr4_u20_o4_l4_N001.lp`

This should open a window with the Instance visualized.

## 3. Start solving the Problem

In this window, choose `Network` and then `solve`. In the new window, choose the port you specified earlier (here: 5001) and start solving.

Depending on the problem size, the solver terminal should show `solution found` and you should be able to hit play in the visualization.