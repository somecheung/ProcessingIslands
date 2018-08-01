
void gridT() {

  int flipper = -1;
  int i;
  int j;

  // Columns of sky
  for (int gridY = stepY/2; gridY <= height; gridY += stepY) {
    for (int gridX = stepX/2; gridX <= width; gridX += stepX*3) {
      image(images[0], gridX, gridY, stepY, stepX);
    }
  }

  // Rows of sky
  for (int gridY = stepY/2; gridY <= height; gridY += stepY*3) {
    for (int gridX = stepX/2; gridX <= width; gridX += stepX) {
      image(images[0], gridX, gridY, stepY, stepX);
    }
  }

  for (int gridY = stepY/2 + stepY; gridY <= height; gridY += stepY*3) { 
    for (int gridX = stepX/2 + stepY; gridX <= width; gridX += stepX*3) {


      int count = 0;
      for (int y = 0; y < 2; y++) {
        for (int x = 0; x < 2; x++) {
          int r = int(random(1, images.length));
          pushMatrix();
          translate(gridX + x * stepX, gridY + y * stepY);
          rotate(radians(angles[count]));
          image(images[r], 0, 0, stepY, stepX);
          popMatrix();
          count++;
        }
      }


      //int r = int(random(0, images.length));
      //image(images[r], gridX, gridY, stepY, stepX);


      /*
      pushMatrix();
       translate(gridX, gridY);
       
       if (flipper == 1) {
       rotate(PI/2);
       } 
       else { 
       rotate(PI);
       }
       
       for (i = 1; i < images.width; i++) {
       int j = i*3;
       
       
       image(1, x, y, stepX, stepY);
       image(2, x+stepX, y, stepX, stepY); 
       
       image(4, x+stepX*j, y, stepX, stepY);
       
       image(5, x, y+stepY, stepX, stepY);
       image(5, x+stepX*j, y+stepY, stepX, stepY);
       }
       */

      /*
      image(1, x, y, stepX*2, stepY*2);
       image(2, x+stepX, y, stepX*2, stepY*2); 
       
       image(4, x+stepX*3, y, stepX*2, stepY*2);
       image(5, x+stepX*4, y, stepX*2, stepY*2); 
       
       image(7, x+stepX*6, y, stepX*2, stepY*2);
       image(5, x+stepX*7, y, stepX*2, stepY*2);
       
       image(1, x, y+i*3, stepX*2, stepY*2);
       image(2, x+stepX, y+i*3, stepX*2, stepY*2); 
       
       image(4, x+stepX*3, y+i*3, stepX*2, stepY*2);
       image(5, x+stepX*4, y+i*3, stepX*2, stepY*2); 
       
       image(7, x+stepX*6, y+i*3, stepX*2, stepY*2);
       image(5, x+stepX*7, y+i*3, stepX*2, stepY*2);
       */

      //gradient();

      //popMatrix();
    }

    //flipper *= -1;
  }
}

