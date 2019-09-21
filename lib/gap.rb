def gap(g, m, n)
    if m == 1 && n == 2 && g == 1
        return [1, 2]
    elsif g > n - m
        return [nil]
    else 
       array_of_primes = consecutive_primes(m, n)
       j = 1 
       until j > array_of_primes.length
         result = gap_check(array_of_primes, g, j)
         if result.length == 2
            return result
         end
         j += 1
        end
    if result == []
        return [nil]
    end
  end
end

def gap_check(array, gap, j)
    result = []
    array.each_with_index {|x, i| 
                                  if array[i + j] == nil
                                    break
                                  elsif array[i + j] - x == gap
                                    result = [x, array[i + j]]
                                    break
                                  end                  
                          }
   
      return result
end

def consecutive_primes(m, n)
  array = []
  until m == n + 1
    if factorial_check(m)
      array << m
    end 
    m += 1
  end
  return array
end
        

def factorial_check(x)
    z = x
    until z == 2
      z -= 1
      if x % z == 0 
        return false
        break
      end
    end   
    true 
end