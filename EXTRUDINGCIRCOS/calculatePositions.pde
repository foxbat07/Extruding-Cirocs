void calculatePositions()
      {
      x= radius* cos((radians(30*mm)+radians(dd)));    // major rotations by mm , minor rotations with dd
      y= radius* sin((radians(30*mm)+radians(dd)));
      z= (yy-startYear)*stepHeight*12+ mm*stepHeight;  ///geeting to the right height
      }
      
