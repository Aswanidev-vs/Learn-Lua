-- writing a simple calculator in lua

function add(a,b) 

return a+b

end

 function sub(b,c)

return b-c

end

function multi(c,d)

return c*d

end

function div(d,e)

if e==0 then

 return "Error: Division by zero"
    end
        return d/e
end


io.write("enter a number : ")

  n1=tonumber(io.read())

io.write("enter a number : ")

 n2=tonumber(io.read())

io.write("enter which operator to perform this : ")

op = io.read()

if op == "+" then
    print(" sum :" .. add(n1,n2))
elseif op == "-" then
    print("substraction :" .. sub(n1,n2))
    elseif op == "*" then
        print("multiplication" .. multi(n1,n2))
        elseif op == "/" then
            print("division :" .. div(n1,n2))
        else
            print("invalid")
end



