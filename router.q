\d .router

routes: (enlist "server-status")!enlist `serverStatus;

serverStatus: {200}

register: {[url; func]
  routes[url]: func;
 }