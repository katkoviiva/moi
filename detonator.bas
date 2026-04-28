1 rem detonator
10 poke53280,0:poke53281,0:print"{clear}               {yellow}detonator":print"{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}"
15 v=53248:pokev+21,0:pokev+16,0:poke2040,192:poke2041,193:pokev+39,6
20 pokev+40,0:fori=12288to12350:readq:pokei,q:next
30 fori=12352to12357:pokei,255:next
35 fori=12358to12414:pokei,0:next
50 fori=49152to49287:readq:pokei,q:next
60 vl=54296:w=54276:a=54277:hi=54273:lw=54272
70 fori=lwtolw+24:pokei,0:next
90 print"          {cyan}hit any key to start"
95 get x$:if x$="" then 95
100 poke53281,12:r=r+1:print"{clear}{down}{down}{down}{down}{down}         {red}Q              Q              Q{brown}";
101 poke53280,9
102 print"        {rvson}{SHIFT-POUND} {CBM-*}{rvsoff}            {rvson}{SHIFT-POUND} {CBM-*}{rvsoff}            {rvson}{SHIFT-POUND} {rvsoff}";
104 print"        {rvson} {rvsoff}{red}+{brown}{rvson} {rvsoff}            {rvson} {rvsof}{red}+{brown}{rvson} {rvsof}            {rvon} {rvsoff}{red}+{brown}";
106 print"        {rvson}   {rvsoff}            {rvson}   {rvoff}            {rvson}  {rvsof}";
108 print"       {rvson}{SHIFT-POUND}   {CBM-*}{rvsof}          {rvson}{SHIFT-POUND}   {CBM-*}{rvsoff}          {rvon}{SHIFT-POUND}  {rvof}";
110 print"       {rvson} {rvsoff} {red}+{brown} {rvson} {rvsof}          {rvson} {rvof} {red}+{brn} {rvon} {rvof}          {rvon} {rvsof} {red}+{brown}";
112 print"       {rvson}     {rvsoff}          {rvson}     {rvsoff}          {rvon}   {rvof}";
114 print"      {rvson}{SHIFT-POUND}     {CBM-*}{rvsoff}        {rvson}{SHIFT-POUND}     {CBM-*}{rvof}        {rvson}{SHIFT-POUND}   {rvsoff}";
116 print"      {rvson} {rvsoff}  {red}+{brown}  {rvon} {rvof}        {rvon} {rvof}  {red}+{brn}  {rvon} {rvof}        {rvson} {rvsoff}  {red}+{brown}";
118 print"      {rvson}       {rvof}        {rvon}       {rvof}        {rvon}    {rvof}";
120 print"     {rvson}{SHIFT-POUND}       {CBM-*}{rvof}      {rvon}{SHIFT-POUND}       {CBM-*}{rvof}      {rvon}{SHIFT-POUND}    {rvof}";
122 print"     {rvson} {rvsof}   {red}+{brn}   {rvon} {rvof}      {rvon} {rvof}   {red}+{brn}   {rvon} {rvof}      {rvon} {rvof}   {red}+{brn}";
124 print"     {rvson}         {rvof}      {rvon}         {rvof}      {rvon}     {rvof}";
126 print"    {rvson}{SHIFT-POUND}         {CBM-*}{rvof}    {rvon}{SHIFT-POUND}         {CBM-*}{rvof}    {rvon}{SHIFT-POUND}     {rvof}";
128 print"    {rvson} {rvsof}    {red}+{brn}    {rvson} {rvsoff}    {rvson} {rvsoff}    {red}+{brn}    {rvon} {rvof}    {rvon} {rvof}    {red}+{brn}";
130 print"    {rvson}           {rvof}    {rvon}           {rvof}    {rvson}      {rvof}";
132 print"{rvson}{CBM-*}{rvsoff}  {rvson}{SHIFT-POUND} {rvsoff}    {red}+{brown}    {rvon} {CBM-*}{rvof}  {rvon}{SHIFT-POUND} {rvof}    {red}+{brn}    {rvon} {CBM-*}{rvof}  {rvon}{SHIFT-POUND} {rvof}    {red}+{brn}";
134 print"{rvson}                                        {rvsoff}";
140 gosub1000:pokev,25:pokev+1,55:pokev+21,1:pokev+16,0
150 db(1,1)=1233:db(2,1)=1248:db(3,1)=1263
160 pokev+31,0
200 sys(49152):ifpeek(179)=1thengosub300
205 lm=3*r:ifrnd(1)*100<lmtheni=int(rnd(1)*3+1):poke178,i
210 ifpeek(1273)=32andpeek(1233)<>32thenbd=1:goto500
215 ifpeek(1288)=32andpeek(1248)<>32thenbd=2:goto500
220 ifpeek(1303)=32andpeek(1263)<>32thenbd=3:goto500
230 if(peek(v+31)and1)=0then200
240 goto700
300 xp=peek(v)+256*(peek(v+16)and1)+16
310 ifxp>255thenpokev+16,peek(v+16)or2:pokev+2,xp-256:goto320
315 pokev+16,peek(v+16)and253:pokev+2,xp
320 pokev+3,peek(v+1)+5:pokev+21,3
330 rem noise
340 rw=int((peek(v+3)-54)/8):c=int(xp/8):i=1024+40*rw+c:kl=peek(i)
345 ifpeek(i)=32andpeek(i-1)=160thengosub400:goto350
347 ifpeek(i)=43andpeek(i-1)=160thengosub400
350 pokev+21,1:return
400 ifc<10thenc=9:goto420
405 ifc<25thenc=24:goto420
410 c=39
420 pokevl,15:pokelw,220:pokehi,68:pokew,129:pokea,15
430 poke984+40*rw+c,32:poke1024+40*rw+c,32:poke1064+40*rw+c,32
440 forth=1to10:next:pokea,0:pokew,0:return
500 lv=0
505 pokedb(bd,1),32:db(bd,1)=db(bd,1)+40:ifpeek(db(bd,1))<>32then600
510 pokedb(bd,1),81:pokedb(bd,1)+54272,2:lv=lv+1:sc=sc+lv:gosub1000:goto505
600 pokevl,15:pokew,129:pokea,15:pokelw,200:ifbd=3then650
602 ifbd=1thensp=1264:goto605
603 sp=1279
605 fori=sp+40*lvtospstep-40:forj=4to14
610 pokei+j,32:poke53281,j:pokehi,int(rnd(1)*20+2):next:next
620 poke53281,12:pokevl,0
630 ifpeek(1233)=32andpeek(1248)=32andpeek(1263)=32then100
640 goto200
650 fori=1298+40*lvto1298step-40:forj=0to6
660 pokei+j,32:poke53281,j:pokehi,int(rnd(1)*20+2):next:next
670 poke53281,12:pokevl,0
680 goto630
700 fori=lwtolw+24:pokei,0:next
705 fori=15to0step-1:poke12288+int(rnd(1)*60),0:poke12288+int(rnd(1)*60),1
710 pokevl,i:pokew,129:pokea,15:pokehi,40:pokelw,200:next
720 pokev+21,0
800 print"{clear}";:poke53281,0:poke53280,0
810 print"{cyan}               game over{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}"
820 print"           your score was ";sc
830 getx$:ifx$=""thenend
840 goto830
1000 print"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{blue}              score: ";sc;
1010 return
10000 data0,28,0,0,62,0,0,127,0,0,201,0,0,201,0,0,255,0,31,255,248,63,255,252
10010 data127,255,254,255,255,255,127,255,254,63,255,252,31,255,248,15,255,240
10020 data3,255,240,1,255,128,0,255,0,0,0,0,0,0,0,0,0,0,0,0,0
10100 data165,197,133,180,169,0,133,179,165,180,201,60,208,4,169,1,133,179,165
10110 data180,201,62,208,4,169,1,133,178,165,180,201,12,208,4,169,2,133,178,165
10120 data180,201,33,208,4,169,3,133,178,165,180,201,41,208,4,169,4,133,178,165
10130 data178,201,1,208,10,173,1,208,206,1,208,206,1,208,96,201,2,208,10,173,1
10140 data208,238,1,208,238,1,208,96,201,3,208,22,206,0,208,206,0,208,173,0,208
10150 data201,254,144,8,173,16,208,41,254,141,16,208,96,238,0,208,238,0,208,173
10160 data0,208,201,2,176,8,173,16,208,9,1,141,16,208,96
