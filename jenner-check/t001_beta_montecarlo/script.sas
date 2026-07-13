/* Monte Carlo mean of a Beta(0.1, 10) distribution via rand("beta", ...).
   Adapted from the repo's one-job DATA step: the running-mean accumulation
   and the rand("beta", 0.1, 10) call are unchanged; the iteration count is
   reduced from 1e9 to 1e6 so a single hosted run returns promptly, and the
   estimate is kept in a one-row dataset and printed so it shows in the
   listing. It still converges to the true mean 0.1/(0.1+10) ~ 0.0099. */
data betamean;
  avg=0;
  do i = 1 to 1e6;
    avg = avg + rand("beta", 0.1, 10)/1e6;
  end;
  output;
  keep avg;
run;

proc print data=betamean noobs;
run;
