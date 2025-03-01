private double fractionLength = .6; 
private int smallestBranch = 10; 
private double branchAngle = .18;  
public void setup() 
{   
	size(640,640);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	line(320,480,320,380);
	strokeWeight(2.5);
	stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));  
	drawBranches(320,380,100,3*Math.PI/2);

} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
double angle1, angle2;
int endX1, endX2, endY1, endY2;
angle1 = angle + branchAngle;
angle2 = angle - branchAngle;
branchLength = branchLength * fractionLength;
endX1 = (int)(branchLength*Math.cos(angle1) + x);
endX2 = (int)(branchLength*Math.cos(angle2) + x);
endY1 = (int)(branchLength*Math.sin(angle1) + y);
endY2 = (int)(branchLength*Math.sin(angle2) + y);
line (x, y, endX1, endY1);
line (x, y, endX2, endY2);

//recursion
if (branchLength > smallestBranch){
angle1+= PI/5;
angle2+= PI/5;
stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));  
drawBranches(endX1, endY1, branchLength, angle1);
drawBranches(endX2, endY2, branchLength, angle2);
}
} 
