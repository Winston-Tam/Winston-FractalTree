private double fractionLength = 2.5; 
private int smallestBranch = 10; 
private double branchAngle = .3;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);
	stroke(0,255,0);
	line(320,480,320,380);
	drawBranches(320,380,100,3*Math.PI/2);

} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));   
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
stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
angle1+=PI/5;
angle2-=PI/5;
drawBranches(endX1, endY1, branchLength/4, angle1);
drawBranches(endX2, endY2, branchLength/4, angle2);
}
} 
