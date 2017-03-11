# time: 2017-03-07 13:28:08 EET
# mode: julia
	"The probability of an event, given a sample space of equiprobable outcomes."
	P(event, space)=length(intersect(event,space))//length(space);
# time: 2017-03-07 13:28:54 EET
# mode: julia
	space=[1,2,3,4,5,6]
# time: 2017-03-07 13:29:13 EET
# mode: julia
	event=[2,4,6]
# time: 2017-03-07 13:29:37 EET
# mode: julia
	event=[2,4,6,8,10]
# time: 2017-03-07 13:30:07 EET
# mode: julia
	intersect(event,space)
# time: 2017-03-07 13:30:22 EET
# mode: julia
	length(intersect(event,space))
# time: 2017-03-07 13:30:39 EET
# mode: julia
	length(space)
# time: 2017-03-07 13:30:46 EET
# mode: julia
	length(intersect(event,space))/length(space)
# time: 2017-03-07 13:31:26 EET
# mode: julia
	"The probability of an event, given a sample space of equiprobable outcomes."
	P(event, space)=length(intersect(event,space))//length(space);
# time: 2017-03-07 13:31:43 EET
# mode: julia
	12//24
# time: 2017-03-07 13:32:08 EET
# mode: julia
	1/2
# time: 2017-03-07 13:42:11 EET
# mode: julia
	"The set of ways of concatenating one item from collection A with one from B."
	immutable Ball{TC,TN}
	    color::TC
	    number::TN
	end
# time: 2017-03-07 13:42:46 EET
# mode: julia
	b=Ball('R',1)
# time: 2017-03-07 13:42:58 EET
# mode: julia
	b.color
# time: 2017-03-07 13:43:03 EET
# mode: julia
	b.number
# time: 2017-03-07 13:43:12 EET
# mode: julia
	b.number=5
# time: 2017-03-07 13:43:58 EET
# mode: julia
	b
# time: 2017-03-07 13:44:24 EET
# mode: julia
	import Base.string, Base.print,Base.show #So that they print nicely
# time: 2017-03-07 13:44:24 EET
# mode: julia
	string(b::Ball)="$(b.color)$(b.number)"
# time: 2017-03-07 13:44:25 EET
# mode: julia
	print(io::IO, x::Ball) = print(io, string(x))
# time: 2017-03-07 13:44:25 EET
# mode: julia
	show(io::IO, x::Ball) = print(io,  x)
# time: 2017-03-07 13:44:26 EET
# mode: julia
	b
# time: 2017-03-07 13:44:37 EET
# mode: julia
	print(b)
# time: 2017-03-07 13:45:59 EET
# mode: julia
	"The set of ways of concatenating one item from collection A with one from B."
	immutable Ball{TC,TN}
	    color::TC
	    number::TN
	end
# time: 2017-03-07 13:46:03 EET
# mode: julia
	b=Ball('R',1)
# time: 2017-03-07 13:46:07 EET
# mode: julia
	print(b)
# time: 2017-03-07 13:46:10 EET
# mode: julia
	import Base.string, Base.print,Base.show #So that they print nicely
# time: 2017-03-07 13:46:10 EET
# mode: julia
	string(b::Ball)="$(b.color)$(b.number)"
# time: 2017-03-07 13:46:10 EET
# mode: julia
	print(io::IO, x::Ball) = print(io, string(x))
# time: 2017-03-07 13:46:11 EET
# mode: julia
	show(io::IO, x::Ball) = print(io,  x)
# time: 2017-03-07 13:46:17 EET
# mode: julia
	print(b)
# time: 2017-03-07 13:47:29 EET
# mode: julia
	labeled_balls(c,n)=[Ball(t[2],t[1]) for t in Base.product(1:n,c)]
# time: 2017-03-07 13:47:30 EET
# mode: julia
	import Base.string, Base.print,Base.show #So that they print nicely
# time: 2017-03-07 13:47:30 EET
# mode: julia
	string(b::Ball)="$(b.color)$(b.number)"a
# time: 2017-03-07 13:47:30 EET
# mode: julia
	print(io::IO, x::Ball) = print(io, string(x))
# time: 2017-03-07 13:54:05 EET
# mode: julia
	methods(string,[Int])
# time: 2017-03-07 13:54:23 EET
# mode: julia
	methods(string,[Float64])
# time: 2017-03-07 13:54:46 EET
# mode: julia
	methods(string,[Ball])
# time: 2017-03-07 13:57:02 EET
# mode: julia
	print("Sum is $(5+2)")
# time: 2017-03-07 13:57:29 EET
# mode: julia
	string(b)
# time: 2017-03-07 13:57:45 EET
# mode: julia
	"$b"
# time: 2017-03-07 13:57:47 EET
# mode: julia
	b
# time: 2017-03-07 13:57:58 EET
# mode: julia
	import Base.string, Base.print,Base.show
# time: 2017-03-07 13:57:58 EET
# mode: julia
	string(b::Ball)="$(b.color)$(b.number)"
# time: 2017-03-07 13:57:58 EET
# mode: julia
	print(io::IO, x::Ball) = print(io, string(x))
# time: 2017-03-07 13:57:58 EET
# mode: julia
	show(io::IO, x::Ball) = print(io,  x)
# time: 2017-03-07 13:58:11 EET
# mode: julia
	print(b)
# time: 2017-03-07 13:58:21 EET
# mode: julia
	print("The ball is $b")
# time: 2017-03-07 13:58:45 EET
# mode: julia
	b
# time: 2017-03-07 13:58:55 EET
# mode: julia
	[b]
# time: 2017-03-07 13:59:07 EET
# mode: julia
	[b,b,b,]
# time: 2017-03-07 14:02:04 EET
# mode: julia
	[i for i=1:5]
# time: 2017-03-07 14:02:22 EET
# mode: julia
	[i^2 for i=1:5]
# time: 2017-03-07 14:04:30 EET
# mode: julia
	Base.product([1:5...],[10:20:50..])
# time: 2017-03-07 14:04:38 EET
# mode: julia
	Base.product([1:5...],[10:20:50...])
# time: 2017-03-07 14:05:18 EET
# mode: julia
	cpi=Base.product([1:5...],[10:20:50...])
# time: 2017-03-07 14:05:35 EET
# mode: julia
	collect(cpi)
# time: 2017-03-07 14:06:01 EET
# mode: julia
	1:100
# time: 2017-03-07 14:06:13 EET
# mode: julia
	[1:10]
# time: 2017-03-07 14:06:49 EET
# mode: julia
	[1:10...]
# time: 2017-03-07 14:07:20 EET
# mode: julia
	f(x,y,z)=x+y+z
# time: 2017-03-07 14:07:29 EET
# mode: julia
	f(1,2,3)
# time: 2017-03-07 14:07:36 EET
# mode: julia
	t=[1,2,3]
# time: 2017-03-07 14:07:42 EET
# mode: julia
	f(t)
# time: 2017-03-07 14:07:50 EET
# mode: julia
	f(t...)
# time: 2017-03-07 14:08:49 EET
# mode: julia
	cpi=Base.product(1:5,10:20:50)
# time: 2017-03-07 14:08:54 EET
# mode: julia
	collect(cpi)
# time: 2017-03-07 14:10:26 EET
# mode: julia
	cpR=collect(cpi)
# time: 2017-03-07 14:10:34 EET
# mode: julia
	cpR[1]
# time: 2017-03-07 14:10:42 EET
# mode: julia
	cpR[1][1]
# time: 2017-03-07 14:10:44 EET
# mode: julia
	cpR[1][2]
