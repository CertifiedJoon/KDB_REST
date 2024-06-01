\l router.q
\l util.q
\l hdb

\d .
http_router: {.[.router.routes[.util.extract_uri[x[0]]][0]; enlist .util.extract_query_params[x[0]]]}

//params
/ {table: "tableName"}
get_head:{[params] ?[`$params[enlist "table"][0];enlist (<;`i;10);0b;()]}

/ registers
.router.register["get-head"; `get_head];
