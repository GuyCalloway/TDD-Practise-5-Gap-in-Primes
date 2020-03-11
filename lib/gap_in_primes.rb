def gap_in_primes(g, m, n)
  if g > n - m
      return nil    
  else
     find_primes(g, m, n)
  end
end


def prime_check(num)
  return num if num <= 1
  (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
end

def find_primes(g, m, n)
  num = m
  array_of_primes = []

  until num == n + 1
      if prime_check(num)
          array_of_primes << num
          if array_of_primes.length != 1
            if array_of_primes[1] - array_of_primes[0] == g
              return array_of_primes
            end
             array_of_primes.shift
          end
      end
      num += 1
  end
  
  return nil
end