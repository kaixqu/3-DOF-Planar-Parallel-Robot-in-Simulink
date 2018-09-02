len1 = .35;
len2 = .35;
len3 = .35;
len4 = .35;
l = .6;
syms x y theta1 theta2 theta4 theta5
eqyl = (len1 * sin(theta1) + len2 * sin(theta1 + theta2) == y);
eqyr = (len3 * sin(theta4 + theta5) + len4 * sin(theta5) == y);
eqxl = (len1 * cos(theta1) + len2 * cos(theta1 + theta2) == x);
eqxr = (len3 * cos(theta4 + theta5) + len4 * cos(theta5) == l - x);
[theta1, theta2, theta4, theta5] = solve(eqxl, eqyl, eqxr, eqyr, theta1, theta2, theta4, theta5);
theta1
theta5