int n=100;
float[] w = new float[n];
float[] x = new float[n];
float[] y = new float[n];
color[] z = new color[n]; //箱の区分け(この場合)

void setup(){
size(800,500);
for(int i = 0; i<n;i++){
  w[i]=random(200); //0から99番の箱のwにそれぞれ一つずつランダムで0~200までの数字をいれる
  x[i]=random(800); //0から99番の箱のxにそれぞれ一つずつランダムで0~800までの数字をいれる
  y[i]=500;//0から99番の箱のyにそれぞれ500をいれる
  z[i]=color(random(255),random(255),255,100);////0から99番の箱のzにそれぞれランダムな色をいれる
 }
}

void draw(){
  
fill(255,20);
rect(0,0,width,height);

for(int i=0; i<n; i++)
{
  noStroke();
  x[i] = x[i] +random(-3,3);//0から99番の箱のxに入ってた数に+3or-3、次のループでさらに+3or-3
  y[i] = y[i]+random(-0.5*i-1,2);//上に吹っ飛ばす 箱の番号によってスピードが違う
  fill(z[i]);//それぞれの箱のzに入ってる色でそれぞれの図形を塗る
  ellipse(x[i],y[i],w[i],w[i]);//それぞれの箱のwに入っている数値によってそれぞれの大きさが決まる
}

}
