package main

import "core:fmt"
import "core:simd"
import "core:thread"

import "core:mem"

import "core:math"
import "core:math/rand"

import "core:time"

ARRAY_SIZE_MAX :: 100_000_000
ITERATIONS_COUNT :: ARRAY_SIZE_MAX

state: struct {
	/* VALUES USED TO STORE VALUES */
	xs:      [ARRAY_SIZE_MAX]f32,
	ys:      [ARRAY_SIZE_MAX]f32,
	zs:      [ARRAY_SIZE_MAX]f32,
	results: [ARRAY_SIZE_MAX]f32,
}

fill_values :: proc() {
	using state

	/* FILLING UP ARRAYS WITH RANDOM VALUES */
	for i in 0 ..< ARRAY_SIZE_MAX {
		xs[i] = rand.float32_range(-100, 101)
		ys[i] = rand.float32_range(-100, 101)
		zs[i] = rand.float32_range(-100, 101)
	}
}

print_metadata :: proc() {
	fmt.println("THIRD BENCHMARK START WITHOUT SSE")
	fmt.printf("RAM USED: %v MB\n", math.ceil_f64(size_of(state) / 1024.0 / 1024.0))
	fmt.printf("ELEMENTS COUNT: %v\n\n", len(state.xs))
}

calculate_res :: proc() {
	using state

	/* f(x, y, z) = -1/x + y*x*z - 5*z */
	for i in 0 ..< ITERATIONS_COUNT {
		results[i] = -1 * xs[i] + ys[i] * xs[i] * zs[i] - 5 * zs[i]
	}
}

main :: proc() {
	print_metadata()

	clock_start := time.now()

	fmt.println("FILLING UP THE ARRAYS WITH RANDOM VALUES...")
	fill_values()

	fmt.printf(
		"TIME SPEND ON FILLING THE Xs, Ys AND Zs with rand values: %d ms\n\n",
		(time.now()._nsec - clock_start._nsec) / 1_000,
	)

	clock_start = time.now()

	fmt.println("CALCULATING THE EXPRESSION...")
	calculate_res()

	fmt.printf(
		"TIME SPEND CALCULATIONG THE RESULT: %d ms\n",
		(time.now()._nsec - clock_start._nsec) / 1_000,
	)
}
