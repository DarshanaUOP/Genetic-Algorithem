# Genetic Algorithm

### WHAT IS GENETIC ALGORITHM
"A genetic algorithm (GA) is a method for solving both constrained and unconstrained optimization problems based on a natural selection process that mimics biological evolution."

### DESCRIPTION
Genetic Algorithm (GA) with Matlab
<img src="https://github.com/DarshanaUOP/Genetic-Algorithem/raw/master/results.jpg" width = 80%>

To run the code on your computer, [clone the repository](https://github.com/DarshanaUOP/Genetic-Algorithem/archive/master.zip) and run [index.m](https://github.com/DarshanaUOP/Genetic-Algorithem/blob/master/index.m) on MatLab environment.

### LIST OF FILES 
* [Jx.m](https://github.com/DarshanaUOP/Genetic-Algorithem/blob/master/Jx.m)  -> The function to find the optimum point.
* [binNumbInv.m](https://github.com/DarshanaUOP/Genetic-Algorithem/blob/master/binNumbInv.m) -> This function helps you to convert binary strings into double variables (inverse function of the *numbConv*) for *crossover* and other operations.
* [costF.m](https://github.com/DarshanaUOP/Genetic-Algorithem/blob/master/costF.m) -> This is the cost function calculator used to assign weights for each value of the function.
* [index.m](https://github.com/DarshanaUOP/Genetic-Algorithem/blob/master/index.m) -> The main method of the program. Run this file when you are ready with cloane of the repository.
* [numbConv.m](https://github.com/DarshanaUOP/Genetic-Algorithem/blob/master/numbConv.m) -> Convert double variables into binary values corresponding to the number of bits will consider in the process.

### SPECIFICATIONS AND VARIABLES
* _pop_           -> The variable which holds the current population.
* _x_             -> The range which independent variable is consider.
* _J_             -> The cost function *(Jx)* values
* _numOfPop_      -> Number of population consider for the algorithem. you can change and see whats happpen in the operation (but it will consume your resources)
* _min_variance_  -> Minimum variance of the population which is the iteration terminates. by reducing this you can get accurate optimum point and it may take more itterations to converge.

