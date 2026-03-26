# Area Calculation

## Shoelace formula

### Triangle
- This is a method to calculate the area of a triangle using the corner coordinates
- Assume we have a triangle with vertices at coordinates (x1, y1), (x2, y2), and (x3, y3). 

$$
A = \frac{1}{2} \left| x_1(y_2 - y_3) + x_2(y_3 - y_1) + x_3(y_1 - y_2) \right|
$$

### Trapezoid
- The shoelace formula can also be used to calculate the area of a trapezoid with vertices at coordinates (x1, y1), (x2, y2), (x3, y3), and (x4, y4).
- The area of the trapezoid can be calculated using the following formula:
  
$$
A = \frac{1}{2} \left| x_1y_2 + x_2y_3 + x_3y_4 + x_4y_1 - (y_1x_2 + y_2x_3 + y_3x_4 + y_4x_1) \right|
$$

### Polygon
- The shoelace formula can also be used to calculate the area of a polygon with n vertices.
- Assume we have a polygon with vertices at coordinates (x1, y1), (x2, y2), ..., (xn, yn).
- The area of the polygon can be calculated using the following formula:

$$
A = \frac{1}{2} \left| \sum_{i=1}^{n} (x_i y_{i+1} - x_{i+1} y_i) \right|
$$

$$
A = \frac{1}{2} \left| (x_1y_2 + x_2y_3 + \cdots + x_{n-1}y_n + x_ny_1) - (y_1x_2 + y_2x_3 + \cdots + y_{n-1}x_n + y_nx_1) \right|
$$
