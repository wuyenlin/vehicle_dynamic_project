# Vehicle-Dyanmics-Project

## Introduction

This project is a collaboration of MSc students of Mechanical Engineering at TU Delft, including Varun Kotian, Nikhil Nagendra, Shantanu Shivankar , Yen-Lin Wu, and a master student at KTH, Filip Berggren. 
This is a repository for the final project of the course Vehicle Dynamics (ME41100) at TU Delft.
This report studies the driving experience of different camber angles (-10 deg to 10 deg) on a sports car in 3 different driving scenarios: 
1. a steady-state turn,
2. a step steering response,
3. a sinusoidal steering response.

The simulation is conducted on IPG CarMaker software, whose results (in .csv) are uploaded and sorted in folders.


## Abstract

This report studies the driving experience of different camber angles on a sports car in different driving scenarios. The camber angle is varied between -10 to 10 degrees and the tests are performed in three different driving scenarios: 
1. a constant turn, 
2. a step steer response, 
3. a sinusoidal steer response.

To evaluate the driving experience, the following performance indicators are analyzed: 
1. yaw velocity, 
2. yaw velocity response gain, 
3. yaw velocity overshoot ratio,
4. lateral acceleration response time, 
5. lateral acceleration overshoot. 

The study concludes that a more negative camber angle results in a sportier driver experience but also yields a more oversteered behaviour. 


## References
```
@article{pacejka,
    author = {Pacejka, H.B.},
    year = {2012},
    month = {01},
    title = {Tire and Vehicle Dynamics},
    journal = {Tire and Vehicle Dynamics}
}

@article{dugoff,
    author = {Howard Dugoff, P. S. Fancher, Leonard Segel},
    ISSN = {0096736X, 25771531},
    URL = {http://www.jstor.org/stable/44644491},
    journal = {SAE Transactions},
    pages = {1219--1243},
    publisher = {SAE International},
    title = {An Analysis of Tire Traction Properties and Their Influence on Vehicle Dynamic Performance},
    volume = {79},
    year = {1970}
}

@article{influence_of_active_camber_control,
    author = {Roethof, Daan and Sezer, Tarik and Arat, Mustafa and Shyrokau, Barys},
    year = {2016},
    month = {04},
    pages = {124-134},
    title = {Influence of Active Camber Control on Steering Feel},
    volume = {9},
    journal = {SAE International Journal of Passenger Cars - Mechanical Systems},
    doi = {10.4271/2016-01-0466}
}

@article{vehicle_handling_dynamics,
    author = {Butterworth-Heinemann},
    year = {2015},
    month = {04},
    pages = {124-134},
    title = {Vehicle handling dynamics},
    volume = {9},
    journal = {Published by Elsevier Ltd. All rights reserved.},
    doi = {Copyright © 2015, 2009}
}
```