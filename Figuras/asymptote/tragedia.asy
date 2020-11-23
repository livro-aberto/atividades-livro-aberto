settings.outformat="png";
settings.render=8;
settings.prc=false;
size(5cm,0);
import three;
import graph3;
import contour;

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


real d(real g) {return (exp(-g/10)*10*exp(1));}
path e = ((graph(d, 0, 20, operator..)));

draw(path3(e, plane=YZ+10plane));

surface s= surface(f,(xmin,ymin), (xmax,ymax));
draw(s, surfacepen = gray(0.6) + opacity(0.8));

//surface t=surface(d,(0,ymin),(0,ymax));
//draw(t);
//draw(contour(f,(xmin,ymin), (xmax,ymax),new real[] {1}));