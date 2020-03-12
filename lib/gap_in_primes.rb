def gap_in_primes(gap, start_val, end_val)
  gap > end_val - start_val ? nil : find_primes(gap, start_val, end_val)
end

def find_primes(gap, start_val, end_val)
  num = start_val
  array_of_primes = []
  until num > end_val
      if prime_check(num)
          array_of_primes << num
          if array_of_primes.length != 1
            if array_of_primes[1] - array_of_primes[0] == gap
              return array_of_primes
            end
             array_of_primes.shift
          end
      end
      num += 1
  end
  return nil
end

def prime_check(num)
  return num if num == 1
  (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
end