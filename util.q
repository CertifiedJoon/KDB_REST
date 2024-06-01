\d .util

extract_uri:{first "?" vs x}

extract_query_params:{
  params: flip [vs["="]'["&" vs last "?" vs x]];
  params[0]!params[1]
 }