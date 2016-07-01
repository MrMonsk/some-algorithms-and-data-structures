require 'benchmark'

def recursive_fib(n)
	if n == 0
		return 0
	end

	if n == 1
		return 1
	end

	if n >= 2
		return recursive_fib(n-1) + recursive_fib(n-2)
	end
end

def iterative_fib(n)
	fib = [0, 1]
	(n-1).times do
		next_sum = fib[-1] + fib[-2]
		fib << next_sum
	end
	return fib.last
end

num = 35

Benchmark.bm do |x|
	x.report("recursive_fib") { recursive_fib(num)}
	x.report("iterative_fib") { iterative_fib(num)}
end

