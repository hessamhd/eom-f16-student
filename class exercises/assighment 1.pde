size (1000, 500);
fill (#1B9309); //iran's flag
noStroke ();
rect (0, 0, 500, 150);
fill (#FFFFFF);
rect (0, 150, 500, 150);
fill (#CE2121);
rect (0, 300, 500, 150);

fill (#FFFFFF); //US flag
rect (500, 0, 500, 450);
fill (#D82E2E);
rect (500, 0, 500, 30);
rect (500, 60, 500, 30);
rect (500, 120, 500,30);
rect (500, 180, 500, 30);
rect (500, 240, 500, 30);
rect (500, 300, 500, 30);
rect (500, 360, 500, 30);
rect (500, 420, 500, 30);
fill (#144AA5);
rect (500, 0, 270, 150);

fill (#FFFFFF); //my head
stroke (#000000);
strokeWeight (3);
strokeJoin (ROUND);
ellipse (500, 120, 100, 100);
rect (460, 170, 80, 150); //BODY
strokeWeight (9);
rect (460, 320, 40, 170); //legs
rect (500, 320, 40, 170);
strokeWeight (25);
line (600, 250, 700, 300);
line (300,300, 200, 350);

stroke (#D82E2E);      //cracks
strokeWeight (5);
line (500, 0, 550, 50);
line (550, 50, 410, 120);
line (410, 120, 560, 165);
line (560, 165, 430, 270);
line (430, 270, 545, 350);
line (545, 350, 415, 450);
line (415, 450, 540, 500);