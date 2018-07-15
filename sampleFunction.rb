def f(x, y, z)
    if x == true && y == true && z == true
        return true
    else
        return false
    end
end

puts f(true, true, true)
puts f(true, true, false)