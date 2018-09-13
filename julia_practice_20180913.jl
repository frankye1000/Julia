x = 3::Int64
println(typeof(x))

#創造一個劍士
#Mutable and immutable type
struct Swordsman
	hp 
	sp
	str
	vit
	agi
	int
	dex
	luk
end

sm = Swordsman(1,2,3,4,5,6,7,8)
println(sm.hp)
println(sm.hp-100)

#Inner constructors
mutable struct Swordsman2
	hp 
	sp
	str
	vit
	agi
	int
	dex
	luk
	Swordsman2() = new(8,7,6,5,4,3,2,1)
end

# 上面的程式就是下面
#struct Swordsman2
    #...

    #function Swordsman2()
    #    ...
    #end
#end

sm2 = Swordsman2()
println(sm2)
println(sm2.hp)


# Parametric type
# 參數化型別，讓型別變得像容器，可以容納不同型別，以達到 generic 的效果。
println(zeros(8,8))

struct Container{T}
	board::Matrix{T}
	Container{T}(m,n) where T = new(zeros(T, m, n))
end

println(Container{Int64}(6,4))

println(Container{Float64}(5,5))

println(Container{Bool}(6,6))

# Methods
# 現在來實作攻擊跟補血兩個技能：

# 攻擊是能夠對對方造成傷害
# 補血是讓自己的 HP 增加

mutable struct Swordsman3
	hp::Int64
	sp::Int64
	str::Int64
	vit::Int64
	agi::Int64
	int::Int64
	dex::Int64
	luk::Int64
	Swordsman3() = new(100,200,300,400,500,600,700,800)
end


attack!(a::Swordsman3, b::Swordsman3) = (b.hp -= (0.9*a.str - 0.6*b.vit))

heal!(a::Swordsman3, hp::Integer) = (a.hp += hp)

sm = Swordsman3()
sm2 = Swordsman3()

println(attack!(sm, sm2))
print(sm2)


## Abstract type
abstract type Role end

mutable struct Swordsman <: Role
    hp::Int64
    sp::Int64
    str::Int64
    vit::Int64
    agi::Int64
    int::Int64
    dex::Int64
    luk::Int64
    Swordsman() = new(1000, 200, 200, 200, 100, 50, 100, 50)
end

mutable struct Wizard <: Role
    hp::Int64
    sp::Int64
    str::Int64
    vit::Int64
    agi::Int64
    int::Int64
    dex::Int64
    luk::Int64
    Wizard() = new(500, 1000, 50, 50, 100, 200, 200, 100)
end

# 這時我們會說：Swordsman 是 Role 的子型別，或是 Swordsman 是一種Role

attack!(a::Role, b::Role) = (b.hp -= (0.8*a.str - 0.6*b.vit))
#所有 Role 的子型別都可以用 attack! 這個方法。

s = Swordsman()
w = Wizard()


println(attack!(s, w))
println(attack!(w, s))





