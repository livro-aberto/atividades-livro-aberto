if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="TCC_Tarso-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.render=8;
settings.prc=false;
import contour;
import three;
import graph3;
import solids;
import math;
import labelpath3;
import labelpath;
settings.render=16;
//attach=true;

pen cor1 = rgb(61/255,165/255,217/255);
pen cor2 = rgb(234/255,115/255,23/255);
pen cor3 = rgb(35/255,100/255,170/255);

size(7.5cm,0);
currentprojection =
perspective(20,20,15, up=Z);

real xmax = 20; real xmin = 0;
real ymax = 20; real ymin = 0;

draw((0,0,0) -- (xmax,0,0), arrow=Arrow3(TeXHead2),L=Label("$g$", position=EndPoint));
draw((0,0,0) -- (0,ymax,0), arrow=Arrow3(TeXHead2),L=Label("$G$", position=EndPoint));
draw((0,0,0) -- (0,0,15), arrow=Arrow3(TeXHead2), L=Label("$m$", position=EndPoint));
dot((10,0,10), L=Label("g=10", align=N));

draw((10,0,0) -- (10,ymax,0), dashed);
draw((15,0,0) -- (15,ymax,0), dashed);
draw((0,5,0) -- (xmax,5,0), dashed);
draw((0,15,0) -- (xmax,15,0), dashed);


real f(pair xy) {
real x = xy.x; real y = xy.y;
return (x*exp(1-(x+y)/10));
}


surface s= surface(f,(xmin,ymin), (xmax,ymax));
draw(s, surfacepen = gray(0.6) + opacity(0.8));
