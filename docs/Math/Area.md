# Area Calculation

## Shoelace formula

### Triangle
- This is a method to calculate the area of a triangle using the corner coordinates
- Assume we have a triangle with vertices at coordinates (x1, y1), (x2, y2), and (x3, y3). 

$$\text{Area} = 0.5 \times |x_1(y_2 - y_3) + x_2(y_3 - y_1) + x_3(y_1 - y_2)|$$

### Trapezoid
- The shoelace formula can also be used to calculate the area of a trapezoid with vertices at coordinates (x1, y1), (x2, y2), (x3, y3), and (x4, y4).
- The area of the trapezoid can be calculated using the following formula:
  
Area = 0.5 * |x1y2 + x2y3 + x3y4 + x4y1 - (y1x2 + y2x3 + y3x4 + y4x1)|

### Polygon
- The shoelace formula can also be used to calculate the area of a polygon with n vertices.
- Assume we have a polygon with vertices at coordinates (x1, y1), (x2, y2), ..., (xn, yn).
- The area of the polygon can be calculated using the following formula:

Area = 0.5 * |(x1y2 + x2y3 + ... + xn-1yn + xny1) - (y1x2 + y2x3 + ... + yn-1xn + ynx1)|
