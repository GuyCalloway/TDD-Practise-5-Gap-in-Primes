def gap(g, m, n)
    if g > n - m
        return nil
    elsif n - m == 1
        return [1, 2]     
    else
       gap_1(g, m, n)
    end
end


def prime_check(num)
    return if num <= 1
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
  end

def gap_1(g, m, n)
    x = m
    arr_primes = []
    
    until x == n + 1
        if prime_check(x)
            arr_primes << x
            if arr_primes.length != 1
              if arr_primes[1] - arr_primes[0] == g
                return arr_primes
              end
               arr_primes.shift
            end
        end
        x += 1
    end
    return nil
end