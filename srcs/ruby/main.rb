#!/usr/bin/ruby

for i in 1..100 do
    nr = true
    out = ''
    if(i % 3 == 0)
        out << "Fizz"
        nr = false
    end
    if(i % 5 == 0)
        out << "Buzz"
        nr = false
    end
    if(nr)
        puts i
    else
        puts out
    end
end
