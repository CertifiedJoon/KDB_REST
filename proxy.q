
// construct response header
.h.hy: {[a;b;c;d]
  "HTTP/1.1 "
  ,a,$[b;"\r\nContent-Encoding: gzip";""],
  "\r\nContent-Type: application/json",
  "\r\nAccess-Control-Allow-Origin: *",
  "\r\nConnection: close\r\nContent-Length: ",
  (count d),"\r\n\r\n",
  d:$[b:(-35!)[]&b&2000<count[d];-35!(6;d);d]}[;0]["200 OK"]

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