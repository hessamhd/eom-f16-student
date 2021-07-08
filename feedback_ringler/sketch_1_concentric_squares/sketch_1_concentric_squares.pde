void setup() {
  size (500, 500);
  strokeWeight (2);

  rectMode(CENTER);

  /* with rectMode(CENTER) rectangles are positioned
   * by their center instead of corner.
   * https://processing.org/reference/rectMode_.html
   * this makes it easier to create
   * rects within rects */
  rect (width/2.0, height/2.0, 200, 200);
  
  fill(200, 20, 0);
  rect (width/2.0, height/2.0, 150, 150);
}