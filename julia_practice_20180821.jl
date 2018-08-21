# Collections
# Create an array
x = []
println(x)

# Homogeneous: 同質性，Array中只能放入屬於同一型別的物件
println(Any[])
println(Int64[])

# Type inference on array
x = [1, 2, 3]
println(x)
y = [1, 1.2]
println(y)

# Specified array type
z = Int8[1,2,3,4]
println(z)

# Indexing
println(x[1])
println(x[2])
println(x[3])
println(length(x))

r = [6.0, 3.2, 7.6, 0.9, 2.3]
println(r[1:3])
println(r[3:end])
println(r[1:3:end]) #中間數字代表跨幾步

# Assign value
r[2] = 5.5
println(r)

# Useful operations
push!(r,2.0)
println(r)

t = [1.0, 9.9]
append!(r,t)
println(r)

pop!(r)
println(r)

# Random array
x = rand(5)
println(x)
sort(x)
println(x)
sort!(x)
println(x)
# 由大到小
sort!(x, rev=true)
println(x)

# 依絕對值大小排序
x = randn(10) #會有負數，因為創造服從常態分布的陣列
println(x)
sort!(x, by=abs)
println(x)

# Iteration
for i in x
	println(i)
end

# Sets
x = Set([1,2,3,4])
println(x)
push!(x,5)
println(x)
pop!(x)
println(x)

# Exists
println(3 in x)
println(4 in x)

# Equivalent
println(x == Set([2,3,5,1]))

# Iteration
for i in x
	println(i)
end

# Dictionaries key-value 的資料結構
x = Dict("1"=>1, "2"=>2, "3"=>3)
println(x)
println(x["1"])

# Add new pair
x["4"] = 4
println(x)

# Overwrite
x["1"] = 5
println(x)

# keys and values
println(keys(x))
println(values(x))

# Iteration
for (k,v) in x
	println(k,"->",v)
end

# Characters 字元是組成字串的基本單元
println(typeof('A'))
println(typeof("A"))

# 字元其實是用相對應的整數表示的
println(Int('A'))
println(Char(65))
println(Int('B'))

# 字元能適用加法嗎？
println('A' + 1)
println('C' - 1)
# 字元可以比較大小嗎？
println('C' > 'A')
println(Int('a'))
println('a' > 'A')
println('a'-'A')

# Strings
x = "Hello World!"
println(x)

y = """Hello
world
!!
"""
println(y)

println(x[1])
println(x[2:end])
println(x[end-1])

# Unicode and UTF-8
s = "\u2200 x \U2203 y"
println(s)
println(s[1])

# 用來告訴你下一個index
println(nextind(s,1))
println(s[4])

# Interpolation
x = "Today"
y = "Sunday"
println(string(x, " is ", y))

println("$x is $y")

println("1 + 2 = $(1+2)")

# Equivalent
println("1 + 2 = 3" == "1 + 2 = $(1 + 2)")

# Repeat
println(repeat(x, 10))

# Join strings
println(join(["apples","bananas","pineapples","oranges"], ", ", " and "))

# Split strings
println(split("1,2,3,4,5,6",","))


# Quiz
matrix = """1, 2, 3, 4
5, 6, 7, 8
9, 10, 11, 12"""

rows = split(matrix, "\n")

A=[]
for row in rows
	elements = split(row, ", ")
	for e in elements
		append!(A,e)
	end
end

println(A)


















