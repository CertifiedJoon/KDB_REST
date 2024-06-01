\d .util

splitRequestText: {"?" vs x}

extractUri:{first "?" vs x}

extractQueryParams: {last "?" vs x}

parseQueryParams:{
  params: flip [vs["="]'["&" vs x]];
  params[0]!params[1]
 }