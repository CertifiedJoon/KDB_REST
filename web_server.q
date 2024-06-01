\l router.q
\l util.q
\l hdb

.log.info: {(neg hopen `:../log.txt) x}


\d .
httpRouter: {
  .log.info x;
  a:.util.splitRequestText[x];
  .[.router.routes[a[0]]; enlist a[1]]}

//params
/ {table: "tableName"}
getHead:{[params] 
  params: .util.parseQueryParams[params];
  .log.info params[enlist "table"][0];
  flip ?[`$params[enlist "table"][0];enlist (<;`i;10);0b;()]}

/ registers
.router.register["get-head"; `getHead];
