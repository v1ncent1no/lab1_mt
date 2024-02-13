package main

import "core:fmt"
import "core:simd"
import "core:thread"

import "core:mem"

import "core:math"
import "core:math/rand"

import "core:time"

ARRAY_SIZE_MAX :: 100_000_000
STEP_COUNT :: 16
ITERATIONS_COUNT :: ARRAY_SIZE_MAX / STEP_COUNT - STEP_COUNT

state: struct {
	/* VALUES USED TO STORE VALUES */
	xs:      [ARRAY_SIZE_MAX]f32,
	ys:      [ARRAY_SIZE_MAX]f32,
	zs:      [ARRAY_SIZE_MAX]f32,
	results: [ARRAY_SIZE_MAX]f32,
	/* SCALARS */
	neg_one:     simd.f32x16,
	five:    simd.f32x16,
}

fill_values :: proc() {
	using state

	/* FILLING UP ARRAYS WITH RANDOM VALUES */
	for i in 0 ..< ARRAY_SIZE_MAX {
		xs[i] = rand.float32_range(-100, 101)
		ys[i] = rand.float32_range(-100, 101)
		zs[i] = rand.float32_range(-100, 101)
	}

	neg_one = #simd[16]f32 {
		0 ..< 16 = -1.0,
	}
	five = #simd[16]f32 {
		0 ..< 16 = 5.0,
	}
}

print_metadata :: proc() {
	fmt.println("THIRD BENCHMARK START WITH SSE")
	fmt.printf("RAM USED: %v MB\n", math.ceil_f64(size_of(state) / 1024.0 / 1024.0))
	fmt.printf("ELEMENTS COUNT: %v\n\n", len(state.xs))
}

calculate_res :: proc() {
	using state

	/* f(x, y, z) = -1/x + y*x*z - 5*z */
	for i in 0 ..< ITERATIONS_COUNT {
		x := simd.from_slice(simd.f32x16, xs[i:i + STEP_COUNT])
		y := simd.from_slice(simd.f32x16, ys[i:i + STEP_COUNT])
		z := simd.from_slice(simd.f32x16, zs[i:i + STEP_COUNT])

		t1 := simd.div(neg_one, x)
		t2 := simd.mul(simd.mul(y, x), z)
		t3 := simd.mul(five, z)
		res := simd.add(t1, simd.sub(t2, t3))

		mem.copy(raw_data(results[i:]), raw_data(&res), size_of(t1))
	}
}

main :: proc() {
	print_metadata()

	clock_start := time.now()
	
	fmt.println("FILLING UP THE ARRAYS WITH RANDOM VALUES...")
	fill_values()

	fmt.printf("TIME SPEND ON FILLING THE Xs, Ys AND Zs with rand values: %d ms\n\n", (time.now()._nsec - clock_start._nsec) / 1_000)
	
	clock_start = time.now()

	// TODO: write the time it took to fill it up

	fmt.println("CALCULATING THE EXPRESSION...")
	calculate_res()

	fmt.printf("TIME SPEND CALCULATIONG THE RESULT: %d ms\n", (time.now()._nsec - clock_start._nsec) / 1_000)
}
