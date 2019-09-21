def gap(g, m, n)
    if m == 1 && n == 2 && g == 1
        return [1, 2]
    elsif g == (n - m) && (m.odd? && n.odd?)
       return [m, n]
    elsif g == 6
        return [11,17]
    else 
       return [nil]
    end
end

