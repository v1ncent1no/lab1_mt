# Sample benchmark output

```
building the executables...
building the first_sse.odin
building the second_sse.odin
building the third_sse.odin
building the first_no_sse.odin
building the second_no_sse.odin
building the third_no_sse.odin
████████╗███████╗███████╗████████╗     ██████╗ ███╗   ██╗███████╗
╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝    ██╔═══██╗████╗  ██║██╔════╝
   ██║   █████╗  ███████╗   ██║       ██║   ██║██╔██╗ ██║█████╗  
   ██║   ██╔══╝  ╚════██║   ██║       ██║   ██║██║╚██╗██║██╔══╝  
   ██║   ███████╗███████║   ██║       ╚██████╔╝██║ ╚████║███████╗
   ╚═╝   ╚══════╝╚══════╝   ╚═╝        ╚═════╝ ╚═╝  ╚═══╝╚══════╝
FIRST BENCHMARK START WITH NO SSE
RAM USED: 153 MB
ELEMENTS COUNT: 10000000

FILLING UP THE ARRAYS WITH RANDOM VALUES...
TIME SPEND ON FILLING THE Xs, Ys AND Zs with rand values: 143290 ms

CALCULATING THE EXPRESSION...
TIME SPEND CALCULATIONG THE RESULT: 24116 ms



FIRST BENCHMARK START WITH SSE
RAM USED: 153 MB
ELEMENTS COUNT: 10000000

FILLING UP THE ARRAYS WITH RANDOM VALUES...
TIME SPEND ON FILLING THE Xs, Ys AND Zs with rand values: 181360 ms

CALCULATING THE EXPRESSION...
TIME SPEND CALCULATIONG THE RESULT: 13814 ms

-------------------------------------

████████╗███████╗███████╗████████╗    ████████╗██╗    ██╗ ██████╗ 
╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝    ╚══██╔══╝██║    ██║██╔═══██╗
   ██║   █████╗  ███████╗   ██║          ██║   ██║ █╗ ██║██║   ██║
   ██║   ██╔══╝  ╚════██║   ██║          ██║   ██║███╗██║██║   ██║
   ██║   ███████╗███████║   ██║          ██║   ╚███╔███╔╝╚██████╔╝
   ╚═╝   ╚══════╝╚══════╝   ╚═╝          ╚═╝    ╚══╝╚══╝  ╚═════╝ 
FIRST BENCHMARK START WITH NO SSE
RAM USED: 763 MB
ELEMENTS COUNT: 50000000

FILLING UP THE ARRAYS WITH RANDOM VALUES...
TIME SPEND ON FILLING THE Xs, Ys AND Zs with rand values: 694303 ms

CALCULATING THE EXPRESSION...
TIME SPEND CALCULATIONG THE RESULT: 131364 ms



SECOND BENCHMARK START WITH SSE
RAM USED: 763 MB
ELEMENTS COUNT: 50000000

FILLING UP THE ARRAYS WITH RANDOM VALUES...
TIME SPEND ON FILLING THE Xs, Ys AND Zs with rand values: 690575 ms

CALCULATING THE EXPRESSION...
TIME SPEND CALCULATIONG THE RESULT: 69565 ms

-------------------------------------

████████╗███████╗███████╗████████╗    ████████╗██╗  ██╗██████╗ ███████╗███████╗
╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝    ╚══██╔══╝██║  ██║██╔══██╗██╔════╝██╔════╝
   ██║   █████╗  ███████╗   ██║          ██║   ███████║██████╔╝█████╗  █████╗  
   ██║   ██╔══╝  ╚════██║   ██║          ██║   ██╔══██║██╔══██╗██╔══╝  ██╔══╝  
   ██║   ███████╗███████║   ██║          ██║   ██║  ██║██║  ██║███████╗███████╗
   ╚═╝   ╚══════╝╚══════╝   ╚═╝          ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝
BENCHMARK START
RAM USED: 1526 MB
ELEMENTS COUNT: 100000000

FILLING UP THE ARRAYS WITH RANDOM VALUES...
TIME SPEND ON FILLING THE Xs, Ys AND Zs with rand values: 1432311 ms

CALCULATING THE EXPRESSION...
TIME SPEND CALCULATIONG THE RESULT: 230759 ms



BENCHMARK START
RAM USED: 1526 MB
ELEMENTS COUNT: 100000000

FILLING UP THE ARRAYS WITH RANDOM VALUES...
TIME SPEND ON FILLING THE Xs, Ys AND Zs with rand values: 1400777 ms

CALCULATING THE EXPRESSION...
TIME SPEND CALCULATIONG THE RESULT: 135611 ms
```
