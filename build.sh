#!/usr/bin/sh

echo "building the executables..."

echo "building the first_sse.odin"
odin build first_sse.odin -file -o:speed
echo "building the second_sse.odin"
odin build second_sse.odin -file -o:speed
echo "building the third_sse.odin"
odin build third_sse.odin -file -o:speed

echo "building the first_no_sse.odin"
odin build first_no_sse.odin -file -o:speed
echo "building the second_no_sse.odin"
odin build second_no_sse.odin -file -o:speed
echo "building the third_no_sse.odin"
odin build third_no_sse.odin -file -o:speed
