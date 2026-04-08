# utl-altair-slc-generate-a-billion-random-betas-from-six-minutes-to-forty-seconds-parallel-tasks
Altair slc generate a billion random betas from six minutes to forty seconds parallel tasks
    %let pgm=utl-altair-slc-generate-a-billion-random-betas-from-six-minutes-to-forty-seconds-parallel-tasks;

    %stop_submission;

    Altair slc generate a billion random betas from six minutes to forty seconds parallel tasks

    Too long to post on a list, see github
    https://github.com/rogerjdeangelis/utl-altair-slc-generate-a-billion-random-betas-from-six-minutes-to-forty-seconds-parallel-tasks

    PROBLEM

      GENERATE ONE BILLION BETA(1,10) RANDOM VARIATES

                     ONE JOB | EIGHT JOBS (4 threads per job?)
                             |
           SECONDS    353    |     41

          * Parallel execution saved approximately 285.38 seconds compared to sequential execution

    Geerating random variables is a common task in modeling

    CONTENTS

       1 one job
       2 twenty parallel jobs

    Too long to pst here, see github

    Perl and Python scripts are better suited for parallelization then sas systask?

    related repo
    https://github.com/rogerjdeangelis/utl-altair-slc-paralell-processing-of-almost-two-billion-obs-io-bound-and-compute-bound-examples
    https://github.com/rogerjdeangelis/utl-altair-slc-paralell-processing-of-almost-two-billion-obs-io-bound-and-compute-bound-examples
    https://github.com/rogerjdeangelis/utl-code-generation-for-potentially-very-fast-parallel-processing
    https://github.com/rogerjdeangelis/utl-count-distinct-ids-by-age-sas-parallel-processing-wih-tiny-five-hundred-million-observations
    https://github.com/rogerjdeangelis/utl-count-distinct-ids-by-month-in-a-two-hundred-million-dataset-parallel-tasks
    https://github.com/rogerjdeangelis/utl-driving-all-your-cores-at-I00-percent-utilization-parallel-processing
    https://github.com/rogerjdeangelis/utl-multi-tasking-a-cartesion-join-of_50000-words-with_50000-words-parallel-processing
    https://github.com/rogerjdeangelis/utl-multi-tasking-thirty-parallel-compute-and-eight-io-bound-tasks-using-systask
    https://github.com/rogerjdeangelis/utl-parallel-processing-cumulative-sums-based-on-dates-and-grouped-by-product
    https://github.com/rogerjdeangelis/utl-parallell-processing-a-rolling-moving-three-month-ninety-day-skewness-for-five-thousand-variable
    https://github.com/rogerjdeangelis/utl-partitioning-your-table-for-a-big-parallel-systask-sort
    https://github.com/rogerjdeangelis/utl-passing-parameters-to-programs-performing-a-parallel-sort-using-systask
    https://github.com/rogerjdeangelis/utl-simple-example-of-parallel-processing-in-r
    https://github.com/rogerjdeangelis/utl-summarize-by-group-within-a-date-range-parallel-processing-systask
    https://github.com/rogerjdeangelis/utl_parallell_processing_creating_8_subsets

    /*                        _       _
    / |   ___  _ __   ___    (_) ___ | |__
    | |  / _ \| `_ \ / _ \   | |/ _ \| `_ \
    | | | (_) | | | |  __/   | | (_) | |_) |
    |_|  \___/|_| |_|\___|  _/ |\___/|_.__/
                           |__/
    */

    data _null_;
      avg=0;
      do i = 1 to 1e9;
        avg = avg + rand("beta", 0.1, 10)/1e9;
      end;
      put avg;
    run;

    /**************************************************************************************************************************/
    /* NOTE: The data step took :                                                                                             */
    /*       real time : 5:53.539                                                                                             */
    /*       cpu time  : 5:53.250                                                                                             */
    /**************************************************************************************************************************/

    /*
    | | ___   __ _
    | |/ _ \ / _` |
    | | (_) | (_| |
    |_|\___/ \__, |
             |___/
    */

    1                                          Altair SLC       15:15 Wednesday, April  8, 2026

    NOTE: Copyright 2002-2025 World Programming, an Altair Company
    NOTE: Altair SLC 2026 (05.26.01.00.000758)
          Licensed to Roger DeAngelis
    NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

    NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
    NOTE: AUTOEXEC source line
    1       +  ï»¿ods _all_ close;
               ^
    ERROR: Expected a statement keyword : found "?"

    NOTE: AUTOEXEC processing completed

    1         %let n = 1000000000;
    2
    3         data _null_;
    4           avg=0;
    5           do i = 1 to 1e9;
    6             avg = avg + rand("beta", 0.1, 10)/1e9;
    7           end;
    8           put avg;
    9         run;

    0.0099017565
    NOTE: The data step took :
          real time : 5:53.539
          cpu time  : 5:53.250


    ERROR: Error printed on page 1

    NOTE: Submitted statements took :
          real time : 5:53.616
          cpu time  : 5:53.328

    /*___    _                      _                                 _ _      _     _       _
    |___ \  | |___      _____ _ __ | |_ _   _   _ __   __ _ _ __ __ _| | | ___| |   (_) ___ | |__  ___
      __) | | __\ \ /\ / / _ \ `_ \| __| | | | | `_ \ / _` | `__/ _` | | |/ _ \ |   | |/ _ \| `_ \/ __|
     / __/  | |_ \ V  V /  __/ | | | |_| |_| | | |_) | (_| | | | (_| | | |  __/ |   | | (_) | |_) \__ \
    |_____|  \__| \_/\_/ \___|_| |_|\__|\__, | | .__/ \__,_|_|  \__,_|_|_|\___|_|  _/ |\___/|_.__/|___/
                                        |___/  |_|                                |__/
    */

    data _null_;;
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
     array fyls[10] $16 (
        'd:/sas/j01.sas'
        'd:/sas/j02.sas'
        'd:/sas/j03.sas'
        'd:/sas/j04.sas'
        'd:/sas/j05.sas'
        'd:/sas/j06.sas'
        'd:/sas/j07.sas'
        'd:/sas/j08.sas'

        );
     do j=1 to 8;
       filen=fyls[j];
       file outfile filevar=filen;
       put jobs[j];
       putlog jobs[j];
     end;
    stop;
    run;quit;


    options set=PYTHONHOME "D:\py314";
    proc python;
    submit;
    import subprocess
    import concurrent.futures
    import os
    import time  # Add time module

    def run_wps_job(job_name, script_path, log_path):
        """Run a single WPS job"""
        wps_exe = r"C:\Program Files\Altair\SLC\2026\bin\wps.exe"
        cmd = [wps_exe, '-sysin', script_path, '-log', log_path]

        print(f"Starting {job_name}...")

        # Time the individual job
        job_start = time.time()
        result = subprocess.run(cmd, capture_output=True, text=True)
        job_end = time.time()

        job_duration = job_end - job_start
        print(f"{job_name}: Completed in {job_duration:.2f} seconds")

        # Check if log file was created
        if os.path.exists(log_path):
            print(f"{job_name}: Log file created at {log_path}")

        return job_name, result.returncode, job_duration

    # Define jobs
    jobs = [
        ("Job01", r"d:\sas\j01.sas", r"d:\log\j01.log"),
        ("Job02", r"d:\sas\j02.sas", r"d:\log\j02.log"),
        ("Job03", r"d:\sas\j03.sas", r"d:\log\j03.log"),
        ("Job04", r"d:\sas\j04.sas", r"d:\log\j04.log"),
        ("Job05", r"d:\sas\j05.sas", r"d:\log\j05.log"),
        ("Job06", r"d:\sas\j06.sas", r"d:\log\j06.log"),
        ("Job07", r"d:\sas\j07.sas", r"d:\log\j07.log"),
        ("Job08", r"d:\sas\j08.sas", r"d:\log\j08.log")
    ]

    # Time the entire parallel execution
    total_start = time.time()

    # Run jobs in parallel using ThreadPoolExecutor (works better within SAS)
    with concurrent.futures.ThreadPoolExecutor(max_workers=8) as executor:
        # Submit all jobs
        futures = [executor.submit(run_wps_job, *job) for job in jobs]

        # Wait for all to complete and get results
        for future in concurrent.futures.as_completed(futures):
            job_name, returncode, job_duration = future.result()
            print(f"{job_name}: Completed with return code {returncode} (took {job_duration:.2f} seconds)")

    total_end = time.time()
    total_duration = total_end - total_start

    print(f"All jobs completed in  {total_duration:.2f} seconds!")
    print(f"Parallel execution saved approximately {sum([f.result()[2] for f in futures]) - total_duration:.2f} seconds compared to sequential execution")
    endsubmit;
    run;

    /**************************************************************************************************************************/
    /*  Altair SLC                                                                                                            */
    /*                                                                                                                        */
    /* The PYTHON Procedure                                                                                                   */
    /*                                                                                                                        */
    /* Starting Job01...                                                                                                      */
    /* Starting Job02...                                                                                                      */
    /* Starting Job03...                                                                                                      */
    /* Starting Job04...                                                                                                      */
    /* Starting Job05...                                                                                                      */
    /* Starting Job06...                                                                                                      */
    /* Starting Job07...                                                                                                      */
    /* Starting Job08...                                                                                                      */
    /*                                                                                                                        */
    /* Job07: Completed in 40.18 seconds                                                                                      */
    /* Job07: Log file created at d:\log\j07.log                                                                              */
    /* Job07: Completed with return code 0 (took 40.18 seconds)                                                               */
    /*                                                                                                                        */
    /* Job03: Completed in 40.21 seconds                                                                                      */
    /* Job03: Log file created at d:\log\j03.log                                                                              */
    /* Job03: Completed with return code 0 (took 40.21 seconds)                                                               */
    /*                                                                                                                        */
    /* Job08: Completed in 40.33 seconds                                                                                      */
    /* Job08: Log file created at d:\log\j08.log                                                                              */
    /* Job08: Completed with return code 0 (took 40.33 seconds)                                                               */
    /*                                                                                                                        */
    /* Job02: Completed in 41.08 seconds                                                                                      */
    /* Job02: Log file created at d:\log\j02.log                                                                              */
    /* Job02: Completed with return code 0 (took 41.08 seconds)                                                               */
    /*                                                                                                                        */
    /* Job05: Completed in 41.16 seconds                                                                                      */
    /* Job05: Log file created at d:\log\j05.log                                                                              */
    /* Job05: Completed with return code 0 (took 41.16 seconds)                                                               */
    /*                                                                                                                        */
    /* Job01: Completed in 41.17 seconds                                                                                      */
    /* Job01: Log file created at d:\log\j01.log                                                                              */
    /* Job01: Completed with return code 0 (took 41.17 seconds)                                                               */
    /*                                                                                                                        */
    /* Job06: Completed in 41.25 seconds                                                                                      */
    /* Job06: Log file created at d:\log\j06.log                                                                              */
    /* Job06: Completed with return code 0 (took 41.25 seconds)                                                               */
    /*                                                                                                                        */
    /* Job04: Completed in 41.27 seconds                                                                                      */
    /* Job04: Log file created at d:\log\j04.log                                                                              */
    /* Job04: Completed with return code 0 (took 41.27 seconds)                                                               */
    /*                                                                                                                        */
    /* All jobs completed in  41.33 seconds!                                                                                  */
    /*                                                                                                                        */
    /* Parallel execution saved approximately 285.38 seconds compared to sequential execution                                 */
    /**************************************************************************************************************************/

    /*              _
      ___ _ __   __| |
     / _ \ `_ \ / _` |
    |  __/ | | | (_| |
     \___|_| |_|\__,_|

    */
