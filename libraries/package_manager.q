\d .

enabled_commands: enlist("run");

$[
  .z.x[0] like "run";
  .pkg.run[];
  show "Command unknown. Known commands are ", " " sv enabled_commands
  ]

\d .pkg

.pkg.run{[]
  system "./env.sh";
  .pkg.runYourFile[];
 }

.pkg.runYourFile: {

 }
