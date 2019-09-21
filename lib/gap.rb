def gap(g, m, n)
    if g > n - m
        return nil
    else 
       gap_1(m, n, g)
    end
end

# def gap_check(array, gap, prime_spacing = 1)
#     result = []
#     array.each_with_index {|x, i| 
#                                   if array[i + prime_spacing] == nil
#                                     return nil
#                                   elsif array[i + prime_spacing] - x == gap
#                                     result = [x, array[i + prime_spacing]]
#                                     break
#                                   end                  
#                           }
   
#       return result
# end

# def consecutive_primes(m, n)
#   array = []
#   until m == n + 1
#     if factorial_check(m)
#       array << m
#     end 
#     m += 1
#   end
#   return array
# end
        

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

def gap_1(m, n, g)
    if n - m == 1
        return [1, 2]
    end
    x = m
    arr = []
    until x == n + 1
        if factorial_check(x)
            arr << x
            if arr.length != 1
              if arr[1] - arr[0] == g
                return arr
              end
               arr.shift
            end
        end
        x += 1
    end
    return nil
end