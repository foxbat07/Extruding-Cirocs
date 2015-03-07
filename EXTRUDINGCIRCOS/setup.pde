void setup()
      {
        size(1920,1080,OPENGL);
        frameRate(60);
        cam= new PeasyCam( this,0,0,0,1000);
        
        cam.setMinimumDistance(100);
        cam.setMaximumDistance(3000);        
        
        
        background(0);
        table= new Table();
        table= loadTable("trial1cs.csv","header");
        tableLength=table.getRowCount();
        
        for (int i=0; i< tableLength;i++)
            {
             cinString= table.getString(i,0);
             coutString= table.getString(i,1);

            int cinNumbers[] = int(splitTokens(cinString, "- "));             
            int coutNumbers[] =int(splitTokens(coutString, "- "));
            
            for (int matrix=0;matrix<3;matrix++)
                {
                  cinNumbersTable[i][matrix] =cinNumbers[matrix];
                  coutNumbersTable[i][matrix] =coutNumbers[matrix];
                  
                }
           
                
                          
            }
//conversion to cylendrical cordinates

      for (int i=0; i< tableLength;i++)
           {
            //cintable 
              cinPositionsTable[i][0]= radius/2* cos((radians(30*cinNumbersTable[i][1])+radians(cinNumbersTable[i][2])));    // major rotations by mm , minor rotations with dd
              cinPositionsTable[i][1]= radius/2* sin((radians(30*cinNumbersTable[i][1])+radians(cinNumbersTable[i][2])));
              cinPositionsTable[i][2]= (cinNumbersTable[i][0]-startYear)*stepHeight*12+ cinNumbersTable[i][1]*stepHeight;  ///geeting to the right height
              
            //cout table  
              coutPositionsTable[i][0]= radius/2* cos((radians(30*coutNumbersTable[i][1])+radians(coutNumbersTable[i][2])));    // major rotations by mm , minor rotations with dd
              coutPositionsTable[i][1]= radius/2* sin((radians(30*coutNumbersTable[i][1])+radians(coutNumbersTable[i][2])));
              coutPositionsTable[i][2]= (coutNumbersTable[i][0]-startYear)*stepHeight*12+ coutNumbersTable[i][1]*stepHeight;  ///geeting to the right height
              
           }   
            //println(cinNumbersTable[0][1]);
      }
