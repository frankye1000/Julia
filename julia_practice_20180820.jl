println("Hello World !")

# 整數型別
println(typeof(100))

# 宣告其他型別
println(typeof(Int8(10)))

# 整數上下限
println(typemax(Int8))
println(typemin(Int8))

# Bitwise operators（位元運算子）
println(Int8(1) << 2)  # 將Int8(1)的位元左移2個位數
println(Int8(4) >> 2)  # 將Int8(4)的位元右移2個位數
println(~Int8(4))  # 00000100 -> 11111011
println(Int8(4) & Int8(8))  # 00000100 & 00001000 = 00000000
println(Int8(4) | Int8(8))  # 00000100 | 00001000 = 00001100

# Floating-Point Numbers（浮點數）
println(typeof(0.5))
println(2.5e-4)

# Infinite value
println(1/Inf)
println(1/0)
println(-5/0)
println(0/0)

# Arithmetic operators（算術運算子）
println(div(123,50)) # div 商
println(123%50)

# Comparison operators（比較運算子）
println(Inf==Inf)
println("Hello"=="Hello")

# 支援Unicode作為變數名稱
δ = 0.00001
println(δ)
안녕하세요 = "Hello"
println(안녕하세요)

# 內建常數
println(pi)
println(π)

# Numeric Literal Coefficients
x = 3
println(2x^2+3x+10)
println((x+2)x)

# Complex numbers
println(1 + 2im)
println((1 + 2im)+(2 - 3im))
println((1 + 2im)*(2 - 3im))
println((1 + 2im)^(2 - 3im))

# Complex numbers
println(real(1 + 2im)) #實數部分
println(imag(1 + 2im)) #虛數部分
println(conj(1 + 2im)) 
println(abs(3 + 4im)) #複數平面上的向量長度
println(angle(3 + 4im)) #複數平面上的向量夾角

# Complex numbers
println(1 + Inf*im)
println(1 + NaN*im)
println((1 + NaN*im)*(3 + 4im))

# Rational numbers(分數)
println(10//15)  #會自動約分
println(10//-15) #自動調整負號
println(numerator(2//10))  # 約分後的分子（numerator）
println(denominator(2//10)) #約分後的分母 (denominator)

# Rational numbers
println(10//15 == 4//6)
println(2//4 + 3//6)
println(float(3//4))

# Rational numbers
println(1//(1+2im)) #分母實數化
println(5//0) #可以接受分母為0
println(3//10 + 1) #與整數運算
println(3//10 - 0.8) #與浮點數運算
println(2//10 * (3 + 4im)) #與複數運算

# Boolean (布林值)
println(true)
println(typeof(false))

# Negation !x：true變成false，false變成true
println(!true)

# Bitwise operators
println(~false)
println(true & false)
println(true | false)

# Updating operators（更新運算子）
x = 5
y = 0

y += 2x

println(y)

# Control Flow
# 條件判斷
# if <判斷式>
#    <運算>
# end
x = 0
y = 5
if x < y
	println("x is less than y")
end

# 條件判斷1
x1 = 10
y1 = 5

if x1 < y1
  println("x1 is less than y1")
end

# 條件判斷2
if x1 < y1
  println("x1 is less than y1")
else
  println("x1 is not less to y1")
end

# 比較特殊值
println(isfinite(5))
println(isinf(Inf))
println(isnan(NaN))


# 迴圈
# while <持續條件>
#     <運算>
# end


# 迴圈
# for i = 1:100
#     <運算>
# end


for i = 1:10
	println(i)
end








