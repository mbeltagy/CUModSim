# mode: julia
	x=[1:10...]
# time: 2017-03-08 13:21:42 EET
# mode: julia
	x=[1:1000...];
# time: 2017-03-08 13:22:09 EET
# mode: julia
	using Primes
# time: 2017-03-08 13:22:22 EET
# mode: julia
	isprime(12)
# time: 2017-03-08 13:22:26 EET
# mode: julia
	isprime(13)
# time: 2017-03-08 13:22:37 EET
# mode: julia
	count
# time: 2017-03-08 13:22:50 EET
# mode: julia
	count(isprime,x)
# time: 2017-03-08 13:23:13 EET
# mode: julia
	count(isprime,1000:2000)
# time: 2017-03-08 13:23:57 EET
# mode: julia
	isprime(BigInt(223423423423424246663))
# time: 2017-03-08 13:25:39 EET
# mode: julia
	count(q->q%6==0,x)
# time: 2017-03-08 13:27:04 EET
# mode: julia
	function f(x)
	      retrun x%6==6
# time: 2017-03-08 13:27:11 EET
# mode: julia
	function f(x)
	      return x%6==6
	end
# time: 2017-03-08 13:27:18 EET
# mode: julia
	function f(x)
	      return x%6==0
	end
# time: 2017-03-08 13:27:27 EET
# mode: julia
	count(f,x)
# time: 2017-03-08 13:27:40 EET
# mode: julia
	function f(x)
	      x%6==0
	end
# time: 2017-03-08 13:27:43 EET
# mode: julia
	count(f,x)
# time: 2017-03-08 13:27:56 EET
# mode: julia
	f(x)= x%6==0
# time: 2017-03-08 13:27:57 EET
# mode: julia
	count(f,x)
# time: 2017-03-08 13:28:08 EET
# mode: julia
	count(q->q%6==0,x)
# time: 2017-03-08 13:29:41 EET
# mode: julia
	immutable Ball{TC,TN}
	    color::TC
	    number::TN
	end
# time: 2017-03-08 13:29:54 EET
# mode: julia
	labeled_balls(c,n)=[Ball(t[2],t[1]) for t in Base.product(1:n,c)]
# time: 2017-03-08 13:30:02 EET
# mode: julia
	urn = [labeled_balls("W", 8); labeled_balls("B", 6) ; labeled_balls("R", 9)]
# time: 2017-03-08 13:30:28 EET
# mode: julia
	using Combinatorics
# time: 2017-03-08 13:30:28 EET
# mode: julia
	"All combinations of n items; each combo as a concatenated str."
	function combos(items, n)
	    combs=combinations(items,n)
	    collect(combs)
	end
# time: 2017-03-08 13:30:29 EET
# mode: julia
	U6 = combos(urn, 6)
# time: 2017-03-08 13:30:40 EET
# mode: julia
	import Base.string, Base.print,Base.show #So that they print nicely
# time: 2017-03-08 13:30:40 EET
# mode: julia
	string(b::Ball)="$(b.color)$(b.number)"a
# time: 2017-03-08 13:30:40 EET
# mode: julia
	print(io::IO, x::Ball) = print(io, string(x))
# time: 2017-03-08 13:30:41 EET
# mode: julia
	show(io::IO, x::Ball) = print(io,  x)
# time: 2017-03-08 13:30:44 EET
# mode: julia
	urn
# time: 2017-03-08 13:31:03 EET
# mode: julia
	urn = [labeled_balls("W", 8); labeled_balls("B", 6) ; labeled_balls("R", 9)]
# time: 2017-03-08 13:31:44 EET
# mode: julia
	U6
# time: 2017-03-08 13:31:58 EET
# mode: julia
	workspace()
# time: 2017-03-08 13:32:22 EET
# mode: julia
	"The set of ways of concatenating one item from collection A with one from B."
	immutable Ball{TC,TN}
	    color::TC
	    number::TN
	end
# time: 2017-03-08 13:32:29 EET
# mode: julia
	import Base.string, Base.print,Base.show #So that they print nicely
# time: 2017-03-08 13:32:29 EET
# mode: julia
	string(b::Ball)="$(b.color)$(b.number)"a
# time: 2017-03-08 13:32:29 EET
# mode: julia
	print(io::IO, x::Ball) = print(io, string(x))
# time: 2017-03-08 13:32:29 EET
# mode: julia
	show(io::IO, x::Ball) = print(io,  x)
# time: 2017-03-08 13:32:38 EET
# mode: julia
	"generates a list of balls with color c and and numbers from 1 to n"
	labeled_balls(c,n)=[Ball(t[2],t[1]) for t in Base.product(1:n,c)]
# time: 2017-03-08 13:32:50 EET
# mode: julia
	urn = [labeled_balls("W", 8); labeled_balls("B", 6) ; labeled_balls("R", 9)]
# time: 2017-03-08 13:33:49 EET
# mode: julia
	labeled_balls("W", 8)
# time: 2017-03-08 13:34:09 EET
# mode: julia
	import Base.string, Base.print,Base.show #So that they print nicely
# time: 2017-03-08 13:34:09 EET
# mode: julia
	string(b::Ball)="$(b.color)$(b.number)"
# time: 2017-03-08 13:34:09 EET
# mode: julia
	print(io::IO, x::Ball) = print(io, string(x))
# time: 2017-03-08 13:34:09 EET
# mode: julia
	show(io::IO, x::Ball) = print(io,  x)
# time: 2017-03-08 13:34:13 EET
# mode: julia
	urn = [labeled_balls("W", 8); labeled_balls("B", 6) ; labeled_balls("R", 9)]
# time: 2017-03-08 13:34:27 EET
# mode: julia
	using Combinatorics
# time: 2017-03-08 13:34:27 EET
# mode: julia
	"All combinations of n items; each combo as a concatenated str."
	function combos(items, n)
	    combs=combinations(items,n)
	    collect(combs)
	end
# time: 2017-03-08 13:34:27 EET
# mode: julia
	U6 = combos(urn, 6)
# time: 2017-03-08 13:34:28 EET
# mode: julia
	length(U6)
# time: 2017-03-08 13:34:37 EET
# mode: julia
	using StatsBase
# time: 2017-03-08 13:34:49 EET
# mode: julia
	g=sample(U6, 1)
# time: 2017-03-08 13:35:04 EET
# mode: julia
	count_ball_color(l,c)=count(x->x.color==c,l)
# time: 2017-03-08 13:35:26 EET
# mode: julia
	count_ball_color(g,'R')
# time: 2017-03-08 13:36:27 EET
# mode: julia
	count_ball_color(g[1],'R')
# time: 2017-03-08 13:37:30 EET
# mode: julia
	sample(U6, 1)
# time: 2017-03-08 13:37:34 EET
# mode: julia
	sample(U6, 3)
# time: 2017-03-08 13:37:48 EET
# mode: julia
	count_ball_color(g[2],'R')
# time: 2017-03-08 13:37:57 EET
# mode: julia
	g=sample(U6, 3)
# time: 2017-03-08 13:37:59 EET
# mode: julia
	count_ball_color(g[2],'R')
# time: 2017-03-08 13:38:12 EET
# mode: julia
	count_ball_color(g[1],'W')
# time: 2017-03-08 13:39:22 EET
# mode: julia
	red6 = [s for s in U6 if count_ball_color(s,'R') == 6]
# time: 2017-03-08 13:40:25 EET
# mode: julia
	binomial(6,9)
# time: 2017-03-08 13:40:29 EET
# mode: julia
	binomial(9,6)
# time: 2017-03-08 13:40:54 EET
# mode: julia
	binomial(23,6)
# time: 2017-03-08 13:42:52 EET
# mode: julia
	b3w2r1 = [s for s in U6 if
	    count_ball_color(s,'B') == 3 && count_ball_color(s,'W') == 2 && count_ball_color(s,'R') == 1]
# time: 2017-03-08 13:44:03 EET
# mode: julia
	P(b3w2r1, U6)
# time: 2017-03-08 13:45:19 EET
# mode: julia
	5
# time: 2017-03-08 13:45:27 EET
# mode: julia
	bits(5)
# time: 2017-03-08 13:45:41 EET
# mode: julia
	bits(6)
# time: 2017-03-08 13:46:08 EET
# mode: julia
	out=6&5
# time: 2017-03-08 13:46:18 EET
# mode: julia
	bits(4)
# time: 2017-03-08 13:47:39 EET
# mode: julia
	[i for i=1:1000 if isprime(i)]
# time: 2017-03-08 13:48:22 EET
# mode: julia
	4//4807
# time: 2017-03-08 13:48:31 EET
# mode: julia
	float(4//4807)
# time: 2017-03-08 13:53:20 EET
# mode: julia
	#Making use of Julia's multiple dispatch
	function P(event::Function, space)
	    count(event,space)//length(space) #Converting the space to a Set speeds the intersection
	end
# time: 2017-03-08 13:55:31 EET
# mode: julia
	P(event, space)=length(intersect(event,space))//length(space);
# time: 2017-03-08 13:58:45 EET
# mode: julia
	D3 = [(d1, d2, d3) for d1 in D for d2 in D for d3 in D]
# time: 2017-03-08 13:58:57 EET
# mode: julia
	D=collect(1:6)
# time: 2017-03-08 13:59:02 EET
# mode: julia
	D3 = [(d1, d2, d3) for d1 in D for d2 in D for d3 in D]
# time: 2017-03-08 13:59:12 EET
# mode: julia
	6^3
# time: 2017-03-08 14:09:23 EET
# mode: julia
	Base.product(1:6,"G")
# time: 2017-03-08 14:09:33 EET
# mode: julia
	g=Base.product(1:6,"G")
# time: 2017-03-08 14:09:36 EET
# mode: julia
	collect(g)
# time: 2017-03-08 14:09:54 EET
# mode: julia
	g2=collect(g)
# time: 2017-03-08 14:10:04 EET
# mode: julia
	e=g2[1]
# time: 2017-03-08 14:10:14 EET
# mode: julia
	e[2]
# time: 2017-03-08 14:10:20 EET
# mode: julia
	t=g2[1]
# time: 2017-03-08 14:10:25 EET
# mode: julia
	t[1]
# time: 2017-03-08 14:10:29 EET
# mode: julia
	t[2]
# time: 2017-03-08 14:11:34 EET
# mode: julia
	D3 = [(d1, d2, d3) for d1 in D for d2 in D for d3 in D]
# time: 2017-03-08 14:17:41 EET
# mode: julia
	f(x)=x^2+1
# time: 2017-03-08 14:17:59 EET
# mode: julia
	x->x^2+1
