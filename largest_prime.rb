require 'prime'

primes = Prime.first(5)
puts primes

def largest_prime(number)
	primes = (2...number).to_a
	if number == 1
		return 1

end
