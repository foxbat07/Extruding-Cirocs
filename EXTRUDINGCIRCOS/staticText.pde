void staticText()
      {
      cam.beginHUD();
      textFont(myTimes);
      textAlign(RIGHT,BASELINE);
      fill(100,180,255,200);
      text("MAT259 Final Project",width-20,height-60 );
      text("By Mohit Hingorani",width-20,height-40 );
      text("Winter 2014",width-20,height-80 );
      
      cam.endHUD();
      }
      //camera.beginHUD();
      // now draw things that you want relative to the camera's position and orientation
      //camera.endHUD(); // always!
