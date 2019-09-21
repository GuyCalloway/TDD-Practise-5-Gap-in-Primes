def gap(g, m, n)
    if g > n - m
        return nil
    elsif n - m == 1
        return [1, 2]
        
    else
        t = Time.now
       gap_1(g, m, n)
       t2 = Time.now
       p t - t2
    end
end


def is_prime?(num)
    return if num <= 1
    (2..Math.sqrt(num)).none? { |i| (num % i).zero? }
  end

# def gap_1(g, m, n)
    
#     x = m
#     arr = []
#     until x == n + 1
#         if is_prime?(x)
#             arr << x
#             if arr.length != 1
#               if arr[1] - arr[0] == g
#                 return arr
#               end
#                arr.shift
#             end
#         end
#         x += 1
#     end
#     return nil
# end

def gap_1(g, m, n)
    arr = [*m..n].select { |x| is_prime?(x)}     
    i = 0
    j = 1

    until arr[j] == nil
        if g == arr[j] - arr[i]
            return [arr[i],arr[j]]
        end
        i += 1
        j += 1
    end
    
    return nil
    
end

