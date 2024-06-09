.z.ph: {
  show x;
  (neg h: hopen 9901)(`httpRouter; x); result: h[];
  .h.hy[`res] .j.j `res`status!(result;200)
 }

.z.pp: {
  show .j.k x[0];
  route: first " " vs x[0];
  body: .j.k sublist[neg count[x[0]] - count route;x[0]];
  (neg h: hopen 9901)(`httpRouter; (route; body)); result: h[];
  .h.hy[`res] .j.j `res`status!(result;200)
 }