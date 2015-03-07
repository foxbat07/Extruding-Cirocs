/**************************************************
 Mohit Hingorani
 Visualizing Information
 MAT259 - Winter 2014
 Final Project: Stairway to Heaven || Extruding Circos
 www.mohithingorani.com
 **************************************************/

import peasy.test.*;
import peasy.org.apache.commons.math.*;
import peasy.*;
import peasy.org.apache.commons.math.geometry.*;

import controlP5.*;
//import opengl.*;
PeasyCam cam;
int years=7;
int radius =400;
int sectors = years*12;
int stepHeight=12;
int startYear=2006;
String [] Month = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};

float dd,mm,yy;
float x,y,z;

PFont myHelvetica = createFont("Helvetica",24);
PFont  myTimes = createFont("Times",18,true);
Table table;
String cinString,coutString;
int rows=15000,columns=5;
int[][] cinNumbersTable=new int[rows][columns];
int[][] coutNumbersTable=new int[rows][columns];

float[][] cinPositionsTable=new float[rows][3];
float[][] coutPositionsTable=new float[rows][3];
int tableLength;
  
boolean randomFlag;
  



