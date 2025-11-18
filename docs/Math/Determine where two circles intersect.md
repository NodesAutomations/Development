Reference : http://www.vb-helper.com/howto_net_circle_circle_intersection.html

If you don't like math, skip to the code below.

Consider the figure on the right showing two circles with radii r0 and r1. The points p0, p1, p2, and p3 have coordinates (x0, y0) and so forth.

Let d = the distance between the circles' centers so . Solving for a gives .Now there are three cases:

- If d > r + r: The circles are too far apart to intersect.
    
    0
    
    1
    
- If d < |r - r|: One circle is inside the other so there is no intersection.
    
    0
    
    1
    
- If d = 0 and r = r: The circles are the same.
    
    0
    
    1
    
- If d = r + r: The circles touch at a single point.
    
    0
    
    1
    
- Otherwise: The circles touch at two points.

The Pythagorean theorem gives:

So:

Substituting and multiplying this out gives:

The -b2 terms on each side cancel out. You can then solve for b to get:

Similarly:

All of these values are known so you can solve for a and b. All that remains is using those distances to find the points p3.

If a line points in direction , then two perpendicular lines point in the directions <dy, -dx> and <-dy, dx>. Scaling the result gives the following coordinates for the points p3:

Be careful to notice the ± and ∓ symbols.

Click and drag to create two circles on the example program. The following code shows the FindCircleCircleIntersections method that the program uses to find the intersections.

```
' Find the points where the two circles intersect.
Private Function FindCircleCircleIntersections( _
 ByVal cx0 As Single, ByVal cy0 As Single, ByVal radius0 As _
     Single, _
 ByVal cx1 As Single, ByVal cy1 As Single, ByVal radius1 As _
     Single, _
 ByRef intersection1 As PointF, ByRef intersection2 As _
     PointF) As Integer
    ' Find the distance between the centers.
    Dim dx As Single = cx0 - cx1
    Dim dy As Single = cy0 - cy1
    Dim dist As Double = Math.Sqrt(dx * dx + dy * dy)

    ' See how many solutions there are.
    If (dist > radius0 + radius1) Then
        ' No solutions, the circles are too far apart.
        intersection1 = New PointF(Single.NaN, Single.NaN)
        intersection2 = New PointF(Single.NaN, Single.NaN)
        Return 0
    ElseIf (dist < Math.Abs(radius0 - radius1)) Then
        ' No solutions, one circle contains the other.
        intersection1 = New PointF(Single.NaN, Single.NaN)
        intersection2 = New PointF(Single.NaN, Single.NaN)
        Return 0
    ElseIf ((dist = 0) AndAlso (radius0 = radius1)) Then
        ' No solutions, the circles coincide.
        intersection1 = New PointF(Single.NaN, Single.NaN)
        intersection2 = New PointF(Single.NaN, Single.NaN)
        Return 0
    Else
        ' Find a and h.
        Dim a As Double = (radius0 * radius0 - _
                radius1 * radius1 + dist * dist) / (2 * _
                    dist)
        Dim h As Double = Math.Sqrt(radius0 * radius0 - a * _
            a)

        ' Find P2.
        Dim cx2 As Double = cx0 + a * (cx1 - cx0) / dist
        Dim cy2 As Double = cy0 + a * (cy1 - cy0) / dist

        ' Get the points P3.
        intersection1 = New PointF( _
            CSng(cx2 + h * (cy1 - cy0) / dist), _
            CSng(cy2 - h * (cx1 - cx0) / dist))
        intersection2 = New PointF( _
            CSng(cx2 - h * (cy1 - cy0) / dist), _
            CSng(cy2 + h * (cx1 - cx0) / dist))

        ' See if we have 1 or 2 solutions.
        If (dist = radius0 + radius1) Then Return 1
        Return 2
    End If
End Function
```
