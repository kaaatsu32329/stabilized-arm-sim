# stabilized-arm-sim

## Overview

This is final assignment report of Simulation Engineering in my university. Purpose is simulating robotics arm.

ToDo: Write overview here.

I call this robot arm `Ostrich Arm`.

## Parametor of the robot arm

| Name  | Length (axis to axis) [mm] | Rotation axis |
| :---: | :------------------------: | :-----------: |
| arm1  |       $l_{1} = 180$        |       Z       |
| arm2  |       $l_{2} = 295$        |       X       |
| arm3  |       $l_{3} = 335$        |       X       |
| arm4  |       $l_{4} = 300$        |       Z       |
| arm5  |       $l_{5} = 335$        |       X       |
| arm6  |       $l_{6} =  80$        |       Z       |

## Input

$$ \textbf{\textit{q}}  = \begin{bmatrix}
    q_{1} \\
    q_{2} \\
    q_{3} \\
    q_{4} \\
    q_{5} \\
    q_{6}
\end{bmatrix} $$

$q_{i}$ is angle.

## Homogeneous transform matrix

$$ {}^{0} T_{1} = \begin{bmatrix}
    \cos q_{1} & -\sin q_{1} & 0 & 0 \\
    \sin q_{1} & \cos q_{1} & 0 & 0 \\
    0 & 0 & 1 & l_{1} \\
    0 & 0 & 0 & 1
\end{bmatrix}, {}^{1} T_{2} = \begin{bmatrix}
    1 & 0 & 0 & 0 \\
    0 & \cos q_{2} & -\sin q_{2} & 0 \\
    0 & \sin q_{2} & \cos q_{2} & l_{2} \\
    0 & 0 & 0 & 1
\end{bmatrix} $$

$$ {}^{2} T_{3} = \begin{bmatrix}
    1 & 0 & 0 & 0 \\
    0 & \cos q_{3} & -\sin q_{3} & 0 \\
    0 & \sin q_{3} & \cos q_{3} & l_{3} \\
    0 & 0 & 0 & 1
\end{bmatrix}, {}^{3} T_{4} = \begin{bmatrix}
    \cos q_{4} & -\sin q_{4} & 0 & 0 \\
    \sin q_{4} & \cos q_{4} & 0 & 0 \\
    0 & 0 & 1 & l_{4} \\
    0 & 0 & 0 & 1
\end{bmatrix} $$

$$ {}^{4} T_{5} = \begin{bmatrix}
    1 & 0 & 0 & 0 \\
    0 & \cos q_{5} & -\sin q_{5} & 0 \\
    0 & \sin q_{5} & \cos q_{5} & l_{5} \\
    0 & 0 & 0 & 1
\end{bmatrix}, {}^{5} T_{6} = \begin{bmatrix}
    \cos q_{6} & -\sin q_{6} & 0 & 0 \\
    \sin q_{6} & \cos q_{6} & 0 & 0 \\
    0 & 0 & 1 & l_{6} \\
    0 & 0 & 0 & 1
\end{bmatrix} $$

$q_{i}$ is variable. $l_{i}$ is constant.

## Jacobian matrix

ToDo: Write

## Differential equation

ToDo: Write
