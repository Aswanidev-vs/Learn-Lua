-- writing a simple calculator in lua

-- Define a function named 'add' that takes two arguments, a and b
function add(a,b) 
    -- Return the sum of a and b
    return a+b
end

-- Define a function named 'sub' that takes two arguments, b and c
function sub(b,c)
    -- Return the result of subtracting c from b
    return b-c
end

-- Define a function named 'multi' that takes two arguments, c and d
function multi(c,d)
    -- Return the product of c and d
    return c*d
end

-- Define a function named 'div' that takes two arguments, d and e
function div(d,e)
    -- Check if the divisor 'e' is 0 to avoid division by zero errors
    if e==0 then
        -- Return an error message if 'e' is 0
        return "Error: Division by zero"
    end
    -- Return the result of dividing d by e
    return d/e
end

-- Prompt the user to enter the first number
io.write("enter a number : ")

-- Read the user's input and convert it to a number, storing it in n1
n1=tonumber(io.read())

-- Prompt the user to enter the second number
io.write("enter a number : ")

-- Read the user's input and convert it to a number, storing it in n2
n2=tonumber(io.read())

-- Prompt the user to enter the operator (+, -, *, /)
io.write("enter which operator to perform this (+, -, *, /) : ")

-- Read the user's input for the operator and store it in op
op = io.read()

-- Explanation for using '..' instead of ',':
-- In Lua, '..' is the string concatenation operator used to join strings and numbers into a single string.
-- If we used a comma (e.g., print("sum :", result)), Lua would print the arguments separated by a tab character.
-- We use '..' here to create a single formatted string for output.

-- Check if the operator is addition
if op == "+" then
    -- Call the add function and print the result
    print(" sum :" .. add(n1,n2))
-- Check if the operator is subtraction
elseif op == "-" then
    -- Call the sub function and print the result
    print("substraction :" .. sub(n1,n2))
-- Check if the operator is multiplication
elseif op == "*" then
    -- Call the multi function and print the result
    print("multiplication" .. multi(n1,n2))
-- Check if the operator is division
elseif op == "/" then
    -- Call the div function and print the result
    print("division :" .. div(n1,n2))
-- If the operator is none of the above
else
    -- Print an invalid message
    print("invalid")
end
