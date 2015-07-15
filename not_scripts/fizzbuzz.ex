check = fn(n) ->
        str = Integer.to_string(n)
        first = false
        second = false
        if rem(n,3) == 0 do 
            first = true
        end
        
        if rem(n,5) == 0 do
            second = true
        end

        if first do 
            str = str <> " fizz"
        else
            if second do
                str = str <> " buzz"
            else
                str = Integer.to_string(n)
            end
        end

        if first and second do
            str = str <> "buzz"
        end

        IO.inspect str
    end

for n <- 1..100, do: check.(n)