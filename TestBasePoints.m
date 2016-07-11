AttachSpec("/Users/guillem/IntegralClosureDim2/IntegralClosureDim2.m");
Q<x, y> := LocalPolynomialRing(RationalField(), 2, "lglex");

// Whole ring
I := ideal<Q | 1 + x, y>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 0 and Nrows(P) eq 0);
assert(Ncols(v) eq 0 and Nrows(v) eq 1);
assert(#C eq 0);

// Whole ring
I := ideal<Q | 1 + y, x>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 0 and Nrows(P) eq 0);
assert(Ncols(v) eq 0 and Nrows(v) eq 1);
assert(#C eq 0);

// Maximal ideal
I := ideal<Q | x, y>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 1 and Nrows(P) eq 1);
assert(Ncols(v) eq 1 and Nrows(v) eq 1);
assert(#C eq 1);

// Single free point
I := ideal<Q | y, x^2>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 2 and Nrows(P) eq 2);
assert(Ncols(v) eq 2 and Nrows(v) eq 1);
assert(#C eq 2); assert(C[2] eq 0);

// Single free point
I := ideal<Q | x, y^2>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 2 and Nrows(P) eq 2);
assert(Ncols(v) eq 2 and Nrows(v) eq 1);
assert(#C eq 2); assert(C[2] eq Infinity());

// Cusp ideal
I := ideal<Q | y^2, x^3>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq 0); assert(C[3] eq Infinity());

// Cusp ideal
I := ideal<Q | x^2, y^3>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq Infinity()); assert(C[3] eq Infinity());

// Exemple common branch
I := ideal<Q | x^2, x*y^2, y^5 - x^6>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq Infinity()); assert(C[3] eq Infinity());

// Exemple common branch
I := ideal<Q | y^2, y*x^2, x^5 - y^6>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq 0); assert(C[3] eq 0);

// Casas' Collectanea example
I := ideal<Q | x^5*y - y^3, x^8 + 2*x^5*y>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4); assert(C[2] eq 0); assert(C[3] eq 0);
assert(C[4] eq Infinity());

// Casas' Collectanea example
I := ideal<Q | y^5*x - x^3, y^8 + 2*y^5*x>;
B := BasePoints(I: Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);
assert(C[2] eq Infinity());
assert(C[3] eq Infinity());
assert(C[4] eq Infinity());

// Victor's TFM examples

// A1
f := (y^2 - x^3)*(y^2 + x^3);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4); assert(C[2] eq 0);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4); assert(C[2] eq 0);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4); assert(C[2] eq Infinity());

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4); assert(C[2] eq Infinity());

// A2
f := (y^2 - x^3)*(y^2 - 2*x^3);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4); assert(C[2] eq 0);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4); assert(C[2] eq 0);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4); assert(C[2] eq Infinity());

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4); assert(C[2] eq Infinity());

// A3
f := (y^2 - x^3)*((y - x)^2 - x^3);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq 1);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq 1);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq Infinity());

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq Infinity());

// A4
f := y^3 - x^11 + x^8*y;
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8); assert(C[4] eq 0);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8); assert(C[4] eq 0);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8); assert(C[4] eq Infinity());

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8); assert(C[4] eq Infinity());

// A5
f := y^3 - x^11;
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 5 and Nrows(P) eq 5);
assert(Ncols(v) eq 5 and Nrows(v) eq 1);
assert(#C eq 5); assert(C[4] eq 0);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 5 and Nrows(P) eq 5);
assert(Ncols(v) eq 5 and Nrows(v) eq 1);
assert(#C eq 5); assert(C[4] eq 0);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 5 and Nrows(P) eq 5);
assert(Ncols(v) eq 5 and Nrows(v) eq 1);
assert(#C eq 5); assert(C[4] eq Infinity());

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 5 and Nrows(P) eq 5);
assert(Ncols(v) eq 5 and Nrows(v) eq 1);
assert(#C eq 5); assert(C[4] eq Infinity());

// A6
f := (y^5 - x^3)*(y^3 - x^5);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq Infinity()); assert(C[3] eq 0);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq Infinity()); assert(C[3] eq 0);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq Infinity()); assert(C[3] eq 0);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3); assert(C[2] eq Infinity()); assert(C[3] eq 0);

// A7
f := (x^2 - y)*(x^2 + y)*(x - y^2)*(x + y^2)*(x^2 - (x - y))*(x^2 + (x - y));
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 7 and Nrows(P) eq 7);
assert(Ncols(v) eq 7 and Nrows(v) eq 1);
assert(#C eq 7);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 7 and Nrows(P) eq 7);
assert(Ncols(v) eq 7 and Nrows(v) eq 1);
assert(#C eq 7);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 7 and Nrows(P) eq 7);
assert(Ncols(v) eq 7 and Nrows(v) eq 1);
assert(#C eq 7);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 7 and Nrows(P) eq 7);
assert(Ncols(v) eq 7 and Nrows(v) eq 1);
assert(#C eq 7);

// A8
f := y^3 - x^10;
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 6 and Nrows(P) eq 6);
assert(Ncols(v) eq 6 and Nrows(v) eq 1);
assert(#C eq 6);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 6 and Nrows(P) eq 6);
assert(Ncols(v) eq 6 and Nrows(v) eq 1);
assert(#C eq 6);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 6 and Nrows(P) eq 6);
assert(Ncols(v) eq 6 and Nrows(v) eq 1);
assert(#C eq 6);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 6 and Nrows(P) eq 6);
assert(Ncols(v) eq 6 and Nrows(v) eq 1);
assert(#C eq 6);

// A9
f := y*(y^2 - x^3);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

// A10
f := y*(y - x^2)*(y^2 - x^3);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 5 and Nrows(P) eq 5);
assert(Ncols(v) eq 5 and Nrows(v) eq 1);
assert(#C eq 5);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 5 and Nrows(P) eq 5);
assert(Ncols(v) eq 5 and Nrows(v) eq 1);
assert(#C eq 5);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 5 and Nrows(P) eq 5);
assert(Ncols(v) eq 5 and Nrows(v) eq 1);
assert(#C eq 5);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 5 and Nrows(P) eq 5);
assert(Ncols(v) eq 5 and Nrows(v) eq 1);
assert(#C eq 5);

// A11
f := y*(y - x^2)*(y - x^3)*(y^2 - x^3);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

// A12
f := (y^2 - x^3)*(y^2 - x^5);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 6 and Nrows(P) eq 6);
assert(Ncols(v) eq 6 and Nrows(v) eq 1);
assert(#C eq 6);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 6 and Nrows(P) eq 6);
assert(Ncols(v) eq 6 and Nrows(v) eq 1);
assert(#C eq 6);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 6 and Nrows(P) eq 6);
assert(Ncols(v) eq 6 and Nrows(v) eq 1);
assert(#C eq 6);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 6 and Nrows(P) eq 6);
assert(Ncols(v) eq 6 and Nrows(v) eq 1);
assert(#C eq 6);

// A13
f := y*(y^2 - x^3)*(y^2 - x^5);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 9 and Nrows(P) eq 9);
assert(Ncols(v) eq 9 and Nrows(v) eq 1);
assert(#C eq 9);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 9 and Nrows(P) eq 9);
assert(Ncols(v) eq 9 and Nrows(v) eq 1);
assert(#C eq 9);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 9 and Nrows(P) eq 9);
assert(Ncols(v) eq 9 and Nrows(v) eq 1);
assert(#C eq 9);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 9 and Nrows(P) eq 9);
assert(Ncols(v) eq 9 and Nrows(v) eq 1);
assert(#C eq 9);

// A14
f := (y^3 - x^5)*((y - x^2)^3 - x^5);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

// A15
f := y*(y - x^2)*(y + x^2);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

// A16
f := y*(y - x^2)*(y + x^2)*(y^3 - x^5)*((y - x^2)^3 - x^5);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 12 and Nrows(P) eq 12);
assert(Ncols(v) eq 12 and Nrows(v) eq 1);
assert(#C eq 12);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 12 and Nrows(P) eq 12);
assert(Ncols(v) eq 12 and Nrows(v) eq 1);
assert(#C eq 12);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 12 and Nrows(P) eq 12);
assert(Ncols(v) eq 12 and Nrows(v) eq 1);
assert(#C eq 12);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 12 and Nrows(P) eq 12);
assert(Ncols(v) eq 12 and Nrows(v) eq 1);
assert(#C eq 12);

// A17
f := &*[y^4 - k*x^7 : k in [1..7]];
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 23 and Nrows(P) eq 23);
assert(Ncols(v) eq 23 and Nrows(v) eq 1);
assert(#C eq 23);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 23 and Nrows(P) eq 23);
assert(Ncols(v) eq 23 and Nrows(v) eq 1);
assert(#C eq 23);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 23 and Nrows(P) eq 23);
assert(Ncols(v) eq 23 and Nrows(v) eq 1);
assert(#C eq 23);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 23 and Nrows(P) eq 23);
assert(Ncols(v) eq 23 and Nrows(v) eq 1);
assert(#C eq 23);

// A18
f := y^7 - x^16;
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 4 and Nrows(P) eq 4);
assert(Ncols(v) eq 4 and Nrows(v) eq 1);
assert(#C eq 4);

// A19
f := y^10 - x^23;
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 8 and Nrows(P) eq 8);
assert(Ncols(v) eq 8 and Nrows(v) eq 1);
assert(#C eq 8);

// A20
f := (y - x)*(y^2 - x^3)*(x^2 - y^3);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 3 and Nrows(P) eq 3);
assert(Ncols(v) eq 3 and Nrows(v) eq 1);
assert(#C eq 3);

// B1
f := (y^4 - x^11)*(y^3 - x^8)*(y^9 - x^22)*(y^12 - x^29)*(y^4 - x^9);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 54 and Nrows(P) eq 54);
assert(Ncols(v) eq 54 and Nrows(v) eq 1);
assert(#C eq 54);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 54 and Nrows(P) eq 54);
assert(Ncols(v) eq 54 and Nrows(v) eq 1);
assert(#C eq 54);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 54 and Nrows(P) eq 54);
assert(Ncols(v) eq 54 and Nrows(v) eq 1);
assert(#C eq 54);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 54 and Nrows(P) eq 54);
assert(Ncols(v) eq 54 and Nrows(v) eq 1);
assert(#C eq 54);

// B2
f := (y^5 - x^8)*(y^4 - 4*x^2*y^3 + 6*x^4*y^2 - 4*x^6*y - x^7 + x^8)*(y^16 - 4*x^7*y^12 + 6*x^14*y^8 - 80*x^14*y^9 - 4*x^21*y^4 - 160*x^21*y^5 - 72*x^21*y^6 + x^28 - 16*x^28*y + 56*x^28*y^2 - 16*x^28*y^3 - x^35)*(y^20 - 5*x^7*y^16 + 10*x^14*y^12 - 60*x^14*y^13 - 10*x^21*y^8 - 540*x^21*y^9 - 2*x^21*y^10 + 5*x^28*y^4 - 404*x^28*y^5 + 380*x^28*y^5 - x^35 - 20*x^35*y - 90*x^35*y^2 - 40*x^35*y^3 + x^42);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 52 and Nrows(P) eq 52);
assert(Ncols(v) eq 52 and Nrows(v) eq 1);
assert(#C eq 52);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 52 and Nrows(P) eq 52);
assert(Ncols(v) eq 52 and Nrows(v) eq 1);
assert(#C eq 52);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 52 and Nrows(P) eq 52);
assert(Ncols(v) eq 52 and Nrows(v) eq 1);
assert(#C eq 52);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 52 and Nrows(P) eq 52);
assert(Ncols(v) eq 52 and Nrows(v) eq 1);
assert(#C eq 52);

// B3
f := (y^3 - x^8)*(y^4 - x^9)*(y^7 - x^16)*(y^16 - 4*x^11*y^12 - 80*x^21*y^9 + 6*x^22*y^8 - 72*x^31*y^6 - 160*x^32*y^5 - 4*x^33*y^4 - 16*x^41*y^3 + 56*x^42*y^2 - 16*x^43*y + x^44 - x^51)*(y^20 - 5*x^11*y^16 + 10*x^22*y^12 - 140*x^24*y^12 - 10*x^33*y^8 - 620*x^35*y^8 - 110*x^37*y^8 + 5*x^44*y^4 - 260*x^46*y^4 + 340*x^48*y^4 - 20*x^50*y^4 - x^55 - 4*x^57 - 6*x^59 - 4*x^61 - x^63);
B := BasePoints(JacobiIdeal1(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 103 and Nrows(P) eq 103);
assert(Ncols(v) eq 103 and Nrows(v) eq 1);
assert(#C eq 103);

B := BasePoints(JacobiIdeal2(f): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 103 and Nrows(P) eq 103);
assert(Ncols(v) eq 103 and Nrows(v) eq 1);
assert(#C eq 103);

B := BasePoints(JacobiIdeal1(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 103 and Nrows(P) eq 103);
assert(Ncols(v) eq 103 and Nrows(v) eq 1);
assert(#C eq 103);

B := BasePoints(JacobiIdeal2(Evaluate(f, <y, x>)): Coefficients := true);
P := B[1]; v := B[2]; g := B[3]; C := B[4];
assert(Ncols(P) eq 103 and Nrows(P) eq 103);
assert(Ncols(v) eq 103 and Nrows(v) eq 1);
assert(#C eq 103);