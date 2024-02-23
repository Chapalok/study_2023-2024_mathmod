model lr3

Real y11(start=32888);
Real y21(start=17777);
parameter Real a = 0.55;
parameter Real b = 0.77;
parameter Real c = 0.66;
parameter Real d = 0.44;

Real y12(start=32888);
Real y22(start=17777);
parameter Real a2 = 0.27;
parameter Real b2 = 0.88;
parameter Real c2 = 0.68;
parameter Real d2 = 0.37;

equation
  der(y11) = -a*y11 - b*y21 + 1.5*sin(3*time+1);
  der(y21) = -c*y11 - d*y21 + 1.2*cos(time+1);
  
equation
  der(y12) = -a2*y12 - b2*y22 + sin(20*time);
  der(y22) = -c2*y12*y22 - d2*y22 + cos(10*time);
  
end lr3;