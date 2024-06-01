\d .router

routes: (enlist "server-status")!enlist `server_status;

server_status: {200}

register: {[url; func]
  routes[url]: func;
 }