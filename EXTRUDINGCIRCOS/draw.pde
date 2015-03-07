void draw()
      { 
        
        background(0);
        fill(255);
        //box(10);
        //drawBezier();
        staticText();
        
        for (int sectorNumber=0 ; sectorNumber< sectors; sectorNumber++)
            {
              drawArc(sectorNumber);
              displayDates(sectorNumber);
              
              
            }
         
        for (int i=0; i< tableLength-1000;i+=10)
            {
             if (randomFlag)
                 {
                   stroke(150,20,70,100);
                   noFill();  
                   randomFlag=!randomFlag;
                 }
             else
                 {
                   stroke(33,200,30,100);
                   noFill();  
                   randomFlag=!randomFlag;
                 }    
             /*    
             bezier(cinPositionsTable[i][0],cinPositionsTable[i][1],cinPositionsTable[i][2],
             (cinPositionsTable[i][0]+coutPositionsTable[i][0])/6,(cinPositionsTable[i][1]+coutPositionsTable[i][1])/6,(cinPositionsTable[i][2]+coutPositionsTable[i][2])/1.5,
             (cinPositionsTable[i][0]+coutPositionsTable[i][0])/6,(cinPositionsTable[i][1]+coutPositionsTable[i][1])/6,(cinPositionsTable[i][2]+coutPositionsTable[i][2])/1.5,
             coutPositionsTable[i][0],coutPositionsTable[i][1],coutPositionsTable[i][2]);
             */
             bezier(cinPositionsTable[i][0],cinPositionsTable[i][1],cinPositionsTable[i][2],
                   (cinPositionsTable[i][0]+coutPositionsTable[i][0])/2,(cinPositionsTable[i][1]+coutPositionsTable[i][1])/2,(cinPositionsTable[i][2]+coutPositionsTable[i][2])/1.8,
                   (cinPositionsTable[i][0]+coutPositionsTable[i][0])/2,(cinPositionsTable[i][1]+coutPositionsTable[i][1])/2,(cinPositionsTable[i][2]+coutPositionsTable[i][2])/1.8,
                   coutPositionsTable[i][0],coutPositionsTable[i][1],coutPositionsTable[i][2]);
            }
            
            
        //drawCircles();
      }
