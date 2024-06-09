\l router.q
\l util.q
\l query_parser.q
\l hdb

.log.info: {(neg hopen `:../log.txt) x}

\d .
httpGetRouter: {
  .log.info x;
  a:.util.splitRequestText[x];
  .[.router.routes[a[0]]; enlist a[1]]}

// params
/ (route; body) 
httpPostRouter: {
  .log.info x[0];
  .[.router.routes[x[0]]; x[1]]
 }

//params
/ {table: "tableName"}
getHead:{[params] 
  params: .util.parseQueryParams[params];
  .log.info params[enlist "table"][0];
  ?[`$params[enlist "table"][0];enlist (<;`i;10);0b;()]}

//params
/ {table: "tableName", indexFrom: 0, indexTo:10}
getRange:{[params]
  params: .util.parseQueryParams[params];
  ?[`$.util.getVal[params;"table"];enlist (within;`i;(.util.getVal[params;"indexFrom"];.util.getVal[params;"indexTo"]);0b;()]
 }

//params
/ refer to .qp.runSelect
postQuery{.qp.runSelect[x]}

/ registers
.router.register["get-head"; `getHead];
.router.register["get-range"; `getRange];
.router.register["query"; `postQuery];