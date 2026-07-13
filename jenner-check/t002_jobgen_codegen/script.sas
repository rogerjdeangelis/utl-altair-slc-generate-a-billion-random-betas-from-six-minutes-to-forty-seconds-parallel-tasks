/* Code-generation step from the repo's "twenty parallel jobs" section:
   an array of eight identical worker scripts (each a scaled beta DATA step)
   is emitted so the parallel launcher can dispatch them. The jobs[] array
   initialization and the do-loop that emits each script are unchanged; only
   the file-write half (file ... filevar=) is dropped so the emission is
   visible in the log instead of being written to per-job .sas files. */
data _null_;
 array jobs[20] $132 (
   'data _null_;avg=0;do i=1 to 125e6;avg=avg+rand("beta",0.1,10)/125e6;end;put avg;run;'
   'data _null_;avg=0;do i=1 to 125e6;avg=avg+rand("beta",0.1,10)/125e6;end;put avg;run;'
   'data _null_;avg=0;do i=1 to 125e6;avg=avg+rand("beta",0.1,10)/125e6;end;put avg;run;'
   'data _null_;avg=0;do i=1 to 125e6;avg=avg+rand("beta",0.1,10)/125e6;end;put avg;run;'
   'data _null_;avg=0;do i=1 to 125e6;avg=avg+rand("beta",0.1,10)/125e6;end;put avg;run;'
   'data _null_;avg=0;do i=1 to 125e6;avg=avg+rand("beta",0.1,10)/125e6;end;put avg;run;'
   'data _null_;avg=0;do i=1 to 125e6;avg=avg+rand("beta",0.1,10)/125e6;end;put avg;run;'
   'data _null_;avg=0;do i=1 to 125e6;avg=avg+rand("beta",0.1,10)/125e6;end;put avg;run;'
   );
 do j=1 to 8;
   putlog jobs[j];
 end;
stop;
run;
