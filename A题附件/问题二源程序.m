function zd2(x,y,z)
P=[x,y,z];
p0 = mean(P, 1);
p = fminunc(@obj, p0, [], P)
function f = obj(p, P)
p = repmat(p, size(P,1), 1);
f = norm(p-P)