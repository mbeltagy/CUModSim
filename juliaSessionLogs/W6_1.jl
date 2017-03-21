# time: 2017-03-21 13:12:40 EET
# mode: julia
	x=[1,2,3]
# time: 2017-03-21 13:13:01 EET
# mode: julia
	c=['A','B','C']
# time: 2017-03-21 13:13:39 EET
# mode: help
	Dicct
# time: 2017-03-21 13:13:43 EET
# mode: help
	Dict
# time: 2017-03-21 13:14:09 EET
# mode: help
	zip
# time: 2017-03-21 13:14:22 EET
# mode: julia
	zip(c,x)
# time: 2017-03-21 13:14:29 EET
# mode: julia
	collect(zip(c,x))
# time: 2017-03-21 13:14:51 EET
# mode: julia
	myDict=Dict(zip(c,x))
# time: 2017-03-21 13:15:01 EET
# mode: julia
	myDict['B']
# time: 2017-03-21 13:15:09 EET
# mode: julia
	myDict['B']=4343
# time: 2017-03-21 13:15:15 EET
# mode: julia
	myDict['B']
# time: 2017-03-21 13:16:19 EET
# mode: julia
	myDict([('A',43),('B',22),('C',22)])
# time: 2017-03-21 13:16:34 EET
# mode: julia
	myDict=Dict([('A',43),('B',22),('C',22)])
# time: 2017-03-21 13:18:15 EET
# mode: julia
	myDict=['A'=>43,'B'=>22,'C'=>22)
# time: 2017-03-21 13:18:19 EET
# mode: julia
	myDict=['A'=>43,'B'=>22,'C'=>22]
# time: 2017-03-21 13:18:31 EET
# mode: julia
	myDict=Dict(['A'=>43,'B'=>22,'C'=>22])
# time: 2017-03-21 13:21:14 EET
# mode: julia
	['A'=>43,'B'=>22,'C'=>22]
# time: 2017-03-21 13:23:44 EET
# mode: julia
	1:5
# time: 2017-03-21 13:23:53 EET
# mode: julia
	typeof(ans)
# time: 2017-03-21 13:24:04 EET
# mode: julia
	collect(1:5)
# time: 2017-03-21 13:24:40 EET
# mode: help
	sum
# time: 2017-03-21 13:25:11 EET
# mode: help
	max
# time: 2017-03-21 13:27:33 EET
# mode: julia
	x=1:30
# time: 2017-03-21 13:28:13 EET
# mode: julia
	y=Vector{Float64}(length(x));
# time: 2017-03-21 13:29:34 EET
# mode: julia
	for i in eachindex(x)
	   y[i]=x[i]^2+1
	end
# time: 2017-03-21 13:29:35 EET
# mode: julia
	y
# time: 2017-03-21 13:30:22 EET
# mode: julia
	y=map(z->z^2+1,x)
# time: 2017-03-21 13:31:31 EET
# mode: julia
	y=filter(z->z%2==0,x)
# time: 2017-03-21 13:33:56 EET
# mode: julia
	y=map(z->z^2+1,x)
# time: 2017-03-21 13:34:16 EET
# mode: julia
	map!(z->z^2+1,y,x)
# time: 2017-03-21 13:36:59 EET
# mode: julia
	function f(x,y)
	    print(x*y)
	end
# time: 2017-03-21 13:37:09 EET
# mode: julia
	f(3,4)
# time: 2017-03-21 13:37:41 EET
# mode: julia
	function f(x,y=5)
	    print(x*y)
	end
# time: 2017-03-21 13:37:43 EET
# mode: julia
	f(3,4)
# time: 2017-03-21 13:37:50 EET
# mode: julia
	f(3)
# time: 2017-03-21 13:38:41 EET
# mode: julia
	function f(x,y=5;a=5,b=10)
	    print(x*y+a+b)
	end
# time: 2017-03-21 13:38:43 EET
# mode: julia
	f(3)
# time: 2017-03-21 13:39:05 EET
# mode: julia
	f(3,a=10)
# time: 2017-03-21 13:40:19 EET
# mode: julia
	function f(x,y=5;a=5,b=10;c...)
	    println(x*y+a+b)
	    println(c)
	end
# time: 2017-03-21 13:40:27 EET
# mode: julia
	function f(x,y=5;a=5,b=10,c...)
	    println(x*y+a+b)
	    println(c)
	end
# time: 2017-03-21 13:40:34 EET
# mode: julia
	f(3,a=10)
# time: 2017-03-21 13:40:48 EET
# mode: julia
	f(3,a=10,z=15)
# time: 2017-03-21 13:41:08 EET
# mode: julia
	f(3,a=10,z=15,k=19)
# time: 2017-03-21 14:00:25 EET
# mode: julia
	p=["GG"=>5, "GB"=>6]
# time: 2017-03-21 14:00:32 EET
# mode: julia
	p[1]
# time: 2017-03-21 14:01:06 EET
# mode: julia
	x=p[1]
# time: 2017-03-21 14:01:10 EET
# mode: julia
	x[1]
# time: 2017-03-21 14:01:13 EET
# mode: julia
	x[2]
# time: 2017-03-21 14:03:31 EET
# mode: julia
	immutable Ball{TC,TN<:Number}
	    color::TC
	    number::TN
	end
# time: 2017-03-21 14:03:43 EET
# mode: julia
	Ball('B',"A")
# time: 2017-03-21 14:03:47 EET
# mode: julia
	Ball('B',1232)
# time: 2017-03-21 14:03:50 EET
# mode: julia
	Ball('B',1232.3434)
# time: 2017-03-21 14:04:13 EET
# mode: julia
	typeof('Char')
# time: 2017-03-21 14:04:16 EET
# mode: julia
	typeof('C')
# time: 2017-03-21 14:04:22 EET
# mode: julia
	typeof('C') <: Number
# time: 2017-03-21 14:04:40 EET
# mode: julia
	Ball(1232,1232.3434)
# time: 2017-03-21 14:05:06 EET
# mode: julia
	immutable Ball2
	    color::Char
	    number::Int
	end
# time: 2017-03-21 14:05:15 EET
# mode: julia
	Ball2(4,5)
# time: 2017-03-21 14:05:53 EET
# mode: julia
	parent(Char)
# time: 2017-03-21 14:06:00 EET
# mode: help
	parent
# time: 2017-03-21 14:06:12 EET
# mode: help
	super
# time: 2017-03-21 14:06:17 EET
# mode: julia
	super(Char)
# time: 2017-03-21 14:06:26 EET
# mode: julia
	supertype(Char)
# time: 2017-03-21 14:06:51 EET
# mode: julia
	Ball2(44,5)
# time: 2017-03-21 14:23:13 EET
# mode: julia
	Base.product("ht","ht")
# time: 2017-03-21 14:23:21 EET
# mode: julia
	collect(Base.product("ht","ht"))
# time: 2017-03-21 14:23:55 EET
# mode: julia
	collect(Base.product("ht","ht","ht"))
# time: 2017-03-21 14:25:24 EET
# mode: julia
	Array{Float64}
# time: 2017-03-21 14:25:33 EET
# mode: julia
	Array{Float64,1}
# time: 2017-03-21 14:25:49 EET
# mode: julia
	Vector{Float64}
# time: 2017-03-21 14:28:31 EET
# mode: julia
	p=["GG"=>5, "GB"=>6]
# time: 2017-03-21 14:28:57 EET
# mode: julia
	[z for z in p]
# time: 2017-03-21 14:29:02 EET
# mode: julia
	[z[1] for z in p]
# time: 2017-03-21 14:29:07 EET
# mode: julia
	[z[2] for z in p]
# time: 2017-03-21 14:30:45 EET
# mode: julia
	f(x,y,z)=x+y+z
# time: 2017-03-21 14:30:50 EET
# mode: julia
	f(1,2,3)
# time: 2017-03-21 14:30:57 EET
# mode: julia
	x=[1,2,3]
# time: 2017-03-21 14:31:02 EET
# mode: julia
	f(x)
# time: 2017-03-21 14:31:17 EET
# mode: julia
	f(x...)
# time: 2017-03-21 14:31:55 EET
# mode: julia
	x=[1,2,3,4]
# time: 2017-03-21 14:31:56 EET
# mode: julia
	f(x...)
# time: 2017-03-21 14:35:08 EET
# mode: julia
	type ProbDist
	    dict::Dict{String,Float64}
	    function ProbDist(ps::Array{Pair{String,Float64},1})
	        n=length(ps)
	        probs=Vector{Float64}(n)
	        vals=[x[2] for x in ps]
	        tot=sum(vals)
	        map!(x->x/tot,probs,vals)
	        @assert all(probs.>=0)
	        new(Dict((ps[i][1],probs[i]) for i in 1:n))
	    end
	    function ProbDist(;l...)
	        ProbDist([Pair(string(x[1]),float(x[2])) for x in l])
	    end
	end
# time: 2017-03-21 14:37:09 EET
# mode: julia
	function P(event::Function, space::ProbDist)
	    for k in keys(space.dict)
	        println(k)
	    end  
	    #sum(space[o] for o in keys(space.dict) if event(o))
	end
# time: 2017-03-21 14:37:34 EET
# mode: julia
	Base.show(io::IO, p::ProbDist) =print(io,"ProbDist: "*join(("$(x[1])=$(round(x[2],4))" for x in p.dict ),", "))
# time: 2017-03-21 14:37:47 EET
# mode: julia
	DK = ProbDist(GG=121801, GB=126840,
	              BG=127123, BB=135138)
# time: 2017-03-21 14:38:04 EET
# mode: julia
	first_girl(outcome)= outcome[1] == 'G'
# time: 2017-03-21 14:38:25 EET
# mode: julia
	P(first_girl,DK)
# time: 2017-03-21 14:40:18 EET
# mode: julia
	function P(event::Function, space::ProbDist)
	    tot=0
	    for o in keys(space.dict)
	        if event(o)
	           tot=tot+space[o]
	        end
	    end  
	    tot
	    #sum(space[o] for o in keys(space.dict) if event(o))
	end
# time: 2017-03-21 14:40:22 EET
# mode: julia
	P(first_girl,DK)
# time: 2017-03-21 14:40:41 EET
# mode: julia
	first_girl(outcome)= outcome[1] == 'G'
# time: 2017-03-21 14:40:44 EET
# mode: julia
	P(first_girl,DK)
# time: 2017-03-21 14:41:07 EET
# mode: julia
	function P(event::Function, space::ProbDist)
	    tot=0
	    for o in keys(space.dict)
	        if event(o)
	           tot=tot+space[o]
	        end
	    end  
	    tot
	    #sum(space[o] for o in keys(space.dict) if event(o))
	end
# time: 2017-03-21 14:41:20 EET
# mode: julia
	import Base.getindex
# time: 2017-03-21 14:41:22 EET
# mode: julia
	getindex(ProbDist,i)=ProbDist.dict[i];
# time: 2017-03-21 14:41:51 EET
# mode: julia
	P(first_girl,DK)
# time: 2017-03-21 14:41:58 EET
# mode: julia
	DK
# time: 2017-03-21 14:42:12 EET
# mode: julia
	0.2384+0.2483
# time: 2017-03-21 14:42:53 EET
# mode: julia
	function such_that(event::Function, space::ProbDist) 
	    ProbDist([Pair(i,space[i]) for i in filter(event, keys(space.dict))])
	end
# time: 2017-03-21 14:43:14 EET
