/ start secondary servers
{value"\\q ",.z.x[1]," -p ",string x}each p:(value"\\p")+1+til"I"$.z.x 0;

/ connect to secondary servers
h:neg hopen each p;
h@\:".z.pc:{exit 0}";
h!:()

/ fields queries. assign query to least busy secondary server
.z.ps:{
  show x;
  $[(w:neg .z.w)in key h;
    [show x; h[w;0]x;h[w]:1_h w];                    /response
    [h[a?:min a:count each h],:w;a("{(neg .z.w).[value x[0]; enlist x[1;0];`error]}";x)]
  ]}  /request