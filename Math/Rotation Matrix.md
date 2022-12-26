### Use Case

- Rotate Axis
- Coordinate Transform

### **Basic rotations[[edit](https://en.wikipedia.org/w/index.php?title=Rotation_matrix&action=edit&section=8)]**

A basic rotation (also called elemental rotation) is a rotation about one of the axes of a coordinate system. The following three basic rotation matrices rotate vectors by an angle *θ* about the *x*-, *y*-, or *z*-axis, in three dimensions, using the [right-hand rule](https://en.wikipedia.org/wiki/Right-hand_rule)—which codifies their alternating signs. (The same matrices can also represent a clockwise rotation of the axes.[[nb 1]](https://en.wikipedia.org/wiki/Rotation_matrix#cite_note-3))

$$
{\displaystyle {\begin{alignedat}{1}R_{x}(\theta )&={\begin{bmatrix}1&0&0\\0&\cos \theta &-\sin \theta \\[3pt]0&\sin \theta &\cos \theta \\[3pt]\end{bmatrix}}\\[6pt]R_{y}(\theta )&={\begin{bmatrix}\cos \theta &0&\sin \theta \\[3pt]0&1&0\\[3pt]-\sin \theta &0&\cos \theta \\\end{bmatrix}}\\[6pt]R_{z}(\theta )&={\begin{bmatrix}\cos \theta &-\sin \theta &0\\[3pt]\sin \theta &\cos \theta &0\\[3pt]0&0&1\\\end{bmatrix}}\end{alignedat}}}
$$

For [column vectors](https://en.wikipedia.org/wiki/Column_vector), each of these basic vector rotations appears counterclockwise when the axis about which they occur points toward the observer, the coordinate system is right-handed, and the angle *θ* is positive. Rz, for instance, would rotate toward the y-axis a vector aligned with the x-axis, as can easily be checked by operating with Rz on the vector (1,0,0):

$$
{\displaystyle R_{z}(90^{\circ }){\begin{bmatrix}1\\0\\0\\\end{bmatrix}}={\begin{bmatrix}\cos 90^{\circ }&-\sin 90^{\circ }&0\\\sin 90^{\circ }&\quad \cos 90^{\circ }&0\\0&0&1\\\end{bmatrix}}{\begin{bmatrix}1\\0\\0\\\end{bmatrix}}={\begin{bmatrix}0&-1&0\\1&0&0\\0&0&1\\\end{bmatrix}}{\begin{bmatrix}1\\0\\0\\\end{bmatrix}}={\begin{bmatrix}0\\1\\0\\\end{bmatrix}}}
$$

Reference
https://en.wikipedia.org/wiki/Rotation_matrix
