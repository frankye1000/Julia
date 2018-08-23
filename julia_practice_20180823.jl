#Functions
#What is function?
#當有些程式行為需要不斷被重複使用，只需要更改行為的一部份即可
#這些行為就可以被抽出來（abstract），成為 function
#讓這部份程式可以有更廣泛的（generic）用處，而不是狹隘而特定的（specific）

function f(x,y)
	return x + y
end

println(f(2,6))

println(f(f(1,2),3))

h(x,y) = x*y
println(h(5,6))

# Specify input and output datatype
function g(x::Int64, y::Int64)::Int64
	return x + y
end
println(g(1,2))


# Operators are functions
println(1+2+3+4+5+6)
println(+(1, 2, 3, 4, 5, 6))

# Anonymous functions
a = () -> println("Calling function a.")
a()

b = x -> println(x)
b(5)

c = (x,y) -> println(x + y)
c(3,6)

# Tuples
x = (1,2,3)
println(x)
println(x[1])
println(x[2:3])

# Unpacking
a,b,c = x
println(a,b,c)

# Swap
b, a = a, b
println(a,b)

# Multiple return values
 shuffle_ = (x, y, z) -> return (y,z,x)
 println(shuffle_(1,2,3))

# Vectorizing functions
y = [1,2,3,4,5,6,7,8,9]
println(y .^ 2)

# User-defined function
f(x) = 3x
println(f.(y))

# 撰寫簡短的程式計算 $f(x, y) = x^2 + y^2 + 5xy + 3$ 的結果，並將以下的數值帶入求值：
data = [(1, 1), (2, 3), (-78, 96), (0, 7), (6, 6)]
f(x,y) = x^2 + y^2 + 5*x*y +3
f(tup::Tuple) = f(tup...)
println(f.(data))

# Types
struct Point
	x::Float64
	y::Float64
end

p = Point(3.0, 4.0)

println(p.x, p.y)

import Base.length

length(p::Point) = sqrt(p.x^2 + p.y^2) # 定義一個方法

println(length(p)) # 把p帶進去







