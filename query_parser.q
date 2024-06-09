\d .qp 

fd:`avg`sum`max`min!(avg;sum;max;min);
od:`st`ste`lt`lte`eq`in!(<;<=;>;>=;=;in);

// params
/ {
/   "table": "table_a",
/   "columns": [
/     {
/       "name": "col_a",
/       "func": "sum"
/     },
/     {
/       "name": "col_b",
/       "func": "avg"
/     }
/   ],
/   "where": [
/     {
/       "column": "col_a",
/       "operator": "st",
/       "arg": 5
/     }
/   ],
/   "order": "col_a",
/   "asc": true,
/   "group": ["col_c", "col_b"]
/ }

runSelect: {[d]
  gb: `$d[`group];
  sort: `$d[`order];
  isasc: d[`asc];
  tbl: `$d[`table];
  clms: exec {(.qp.fd`$x;`$y)}'[func;name] from d[`columns];
  whr: exec {(.qp.od`$x; `$y; z)}'[operator;column;arg] from d[`where];
  ?[tbl;whr;[count gb; gb; 0b];({x[1]}each clms)!clms]
 }