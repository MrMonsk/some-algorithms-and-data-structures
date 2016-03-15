require "prime"

def largest_prime(x)
  last_prime = x.prime_division.last 
  last_prime.first
end

puts largest_prime(13195)