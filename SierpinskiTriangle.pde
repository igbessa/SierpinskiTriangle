int level = 20;
int rgb = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255) );

public void setup(){
  size(500,500);
}
public void draw(){
  background(0);
  sierpinski(0,500,level);

}
public void keyPressed(){
  if(key == 'w'){
    level += 20;
  }
  if(key == 's'){
    level -= 20;
  }
}

public void sierpinski(int x, int y, int len) {
   if(len <= 20){
    fill(rgb);
    triangle(x,y, x+len/2,y-len, x+len,y);
   }
   else{
     //left corner at (x, y), base and height = len/2
     sierpinski(x,y, len/2);
     sierpinski(x+len/2, y, len/2);
     sierpinski(x+len/4,y-len/2,len/2);
   }
}
