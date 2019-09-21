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

  #ASK WHY THIS IS SO MUCH FASTER^^
# def prime_check(x)
#     return if x <= 1
#     arr = [*2..Math.sqrt(x)]
#     arr.none? {|z| if x % z == 0
                  
#     end}
# end

# def gap_1(g, m, n)
    
#     x = m
#     arr_primes = []
#     until x == n + 1
#         if prime_check(x)
#             arr_primes << x
#             if arr.length != 1
#               if arr_primes[1] - arr_primes[0] == g
#                 return arr_primes
#               end
#                arr_primes.shift
#             end
#         end
#         x += 1
#     end
#     return nil
# end

def gap_1(g, m, n)

    arr_of_primes = [*m..n].select { |x| prime_check(x)}     
    i = 0
    j = 1

    until arr_of_primes[j] == nil
        if g == arr_of_primes[j] - arr_of_primes[i]
            return [arr_of_primes[i],arr_of_primes[j]]
        end
        i += 1
        j += 1
    end
    
    return nil
    
end

