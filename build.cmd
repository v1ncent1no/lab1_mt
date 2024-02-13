@echo off

echo Building the executables...

echo Building the first_sse.odin
odin build first_sse.odin -file -o:speed
echo Building the second_sse.odin
odin build second_sse.odin -file -o:speed
echo Building the third_sse.odin
odin build third_sse.odin -file -o:speed

echo Building the first_no_sse.odin
odin build first_no_sse.odin -file -o:speed
echo Building the second_no_sse.odin
odin build second_no_sse.odin -file -o:speed
echo Building the third_no_sse.odin
odin build third_no_sse.odin -file -o:speed 
