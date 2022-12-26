Rotating about a point in 2-dimensional space

Imagine a point located at (x,y). If you wanted to rotate that point around the origin, the coordinates of the new point would be located at (x',y').

y′=ycosθ+xsinθ

In matrix notation, this can be written as:

As a sanity check, consider a point on the x-axis. At a rotation of 90°, all the cos components will turn to zero, leaving us with (x',y') = (0, x), which is a point lying on the y-axis, as we would expect.

If you wanted to rotate the point around something other than the origin, you need to first translate the whole system so that the point of rotation *is* at the origin. Then perform the rotation. And finally, undo the translation. So if the point to rotate around was at (10,10) and the point to rotate was at (20,10), the numbers for (x,y) you would plug into the above equation would be (20-10, 10-10), i.e. (10, 0). Then, once you had calculated (x',y') you would need to add (10,10) back onto the result to get the final answer.

Try this out with the demo above. The slider can be used to adjust the angle of rotation and you can drag and drop both the red point, and the black origin to see the effect on the transformed point (pink).
