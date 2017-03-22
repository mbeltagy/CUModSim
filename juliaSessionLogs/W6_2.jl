	# What is a closure
# time: 2017-03-22 13:17:00 EET
# mode: julia
	function add_Gen(num_to_add)
	   function myAdder(x)
	        x+num_to_add
	   end
	   myAdder
	end
# time: 2017-03-22 13:17:17 EET
# mode: julia
	add2=add_Gen(2)
# time: 2017-03-22 13:17:25 EET
# mode: julia
	add2(5)
# time: 2017-03-22 13:18:02 EET
# mode: julia
	add10=add_Gen(10)
# time: 2017-03-22 13:18:10 EET
# mode: julia
	add10(5)
# time: 2017-03-22 13:19:26 EET
# mode: julia
	function get_next_num()
	    for i=1:10
	       produce(i)
	    end
	end
# time: 2017-03-22 13:20:02 EET
# mode: julia
	t=Task(get_next_num)
# time: 2017-03-22 13:20:31 EET
# mode: julia
	consume(t)
# time: 2017-03-22 13:21:03 EET
# mode: julia
	collect(t)
# time: 2017-03-22 13:24:34 EET
# mode: julia
	split("Good guys")
# time: 2017-03-22 13:24:48 EET
# mode: julia
	split("Good guys have fun")
# time: 2017-03-22 13:25:20 EET
# mode: julia
	"Good guys have fun"|>split
# time: 2017-03-22 13:25:38 EET
# mode: julia
	"Good guys have fun"|>split|>join
# time: 2017-03-22 13:26:10 EET
# mode: julia
	board = """GO   A1 CC1 A2  T1 R1 B1  CH1 B2 B3
	           JAIL C1 U1  C2  C3 R2 D1  CC2 D2 D3 
	           FP   E1 CH2 E2  E3 R3 F1  F2  U2 F3 
	           G2J  G1 G2  CC3 G3 R4 CH3 H1  T2 H2""" |> split
# time: 2017-03-22 13:28:21 EET
# mode: julia
	repeat(["?"],outer=14)
# time: 2017-03-22 13:28:59 EET
# mode: julia
	append!([1,2],[10,11,12])
# time: 2017-03-22 13:30:31 EET
# mode: julia
	CH = append!("GO JAIL C1 E3 H2 R1 R R U -3" |> split,  repeat(["?"],outer=[6]))
# time: 2017-03-22 13:35:39 EET
# mode: julia
	rand(1:6)
# time: 2017-03-22 13:44:18 EET
# mode: julia
	function monopoly(steps)
	    global here
	    here = 1
	    CC_deck = shuffle(CC)
	    CH_deck = shuffle(CH)
	    doubles = 0
	    function monopolyTask()
	        for _=1:steps
	            d1, d2 = rand(1:6), rand(1:6)
	            goto(here + d1 + d2)
	            doubles = (d1 == d2) ? (doubles + 1): 0
	            if doubles == 3 || board[here] == "G2J"  
	                goto("JAIL")
	            elseif startswith(board[here],"CC")
	                do_card(CC_deck)
	            elseif startswith(board[here],"CH")
	                do_card(CH_deck)
	            end
	            produce(board[here])
	        end
	    end
	    Task(monopolyTask)
	end
# time: 2017-03-22 13:44:18 EET
# mode: julia
	"Go to destination square (a square number). Update 'here'."
	function goto(square::Int)
	    global here
	    here = (square-1) % length(board)+1
	end
# time: 2017-03-22 13:44:18 EET
# mode: julia
	"Go to destination square (a square name). Update 'here'."
	function goto(square::AbstractString)
	    global here
	    here = findfirst(board,square)
	end
# time: 2017-03-22 13:44:19 EET
# mode: julia
	"Take the top card from deck and do what it says."
	function do_card(deck)
	    global here
	    card = pop!(deck)           # The top card
	    unshift!(deck,card)           # Move top card to bottom of deck
	    if card == "R"|| card == "U" 
	        while !startswith(board[here],card)
	            goto(here + 1)   # Advance to next railroad or utility
	        end
	    elseif card == "-3"
	        goto(here - 3)       # Go back 3 spaces
	    elseif card != "?"
	        goto(card)           # Go to destination named on card
	    end
	end;
# time: 2017-03-22 13:44:38 EET
# mode: julia
	monopoly(5)
# time: 2017-03-22 13:44:57 EET
# mode: julia
	board = """GO   A1 CC1 A2  T1 R1 B1  CH1 B2 B3
	           JAIL C1 U1  C2  C3 R2 D1  CC2 D2 D3 
	           FP   E1 CH2 E2  E3 R3 F1  F2  U2 F3 
	           G2J  G1 G2  CC3 G3 R4 CH3 H1  T2 H2""" |> split
# time: 2017-03-22 13:44:57 EET
# mode: julia
	# Lists of 16 community chest and 16 chance cards. See do_card.
	CC = append!(["GO", "JAIL"], repeat(["?"],outer=[14]))
# time: 2017-03-22 13:44:57 EET
# mode: julia
	CH = append!("GO JAIL C1 E3 H2 R1 R R U -3" |> split,  repeat(["?"],outer=[6]))
# time: 2017-03-22 13:45:00 EET
# mode: julia
	monopoly(5)
# time: 2017-03-22 13:45:17 EET
# mode: julia
	mgame=monopoly(5)
# time: 2017-03-22 13:45:28 EET
# mode: julia
	consume(mgame)
# time: 2017-03-22 13:49:46 EET
# mode: julia
	collect(mgame)
# time: 2017-03-22 13:49:56 EET
# mode: julia
	mgame=monopoly(20)
# time: 2017-03-22 13:49:57 EET
# mode: julia
	collect(mgame)
# time: 2017-03-22 13:51:08 EET
# mode: julia
	using PyPlot
# time: 2017-03-22 13:51:21 EET
# mode: julia
	ax=axes()
# time: 2017-03-22 13:52:13 EET
# mode: julia
	ax[:hist]([1,2,1,2,3,4,4,4,4,5,1,2],bins=5)
# time: 2017-03-22 14:02:26 EET
# mode: julia
	startswith("CC","CK")
# time: 2017-03-22 14:02:29 EET
# mode: julia
	startswith("CC","CC222")
# time: 2017-03-22 14:02:38 EET
# mode: julia
	startswith("CC222","CC")
# time: 2017-03-22 14:03:18 EET
# mode: julia
	:dfafa
# time: 2017-03-22 14:03:25 EET
# mode: julia
	typeof(ans)
# time: 2017-03-22 14:03:48 EET
# mode: julia
	ax
# time: 2017-03-22 14:03:57 EET
# mode: julia
	fieldname(ax)
# time: 2017-03-22 14:04:00 EET
# mode: julia
	fieldnames(ax)
# time: 2017-03-22 14:05:30 EET
# mode: julia
	rand(1:4)
# time: 2017-03-22 14:05:33 EET
# mode: julia
	rand(1:40)
# time: 2017-03-22 14:20:53 EET
# mode: julia
	import StatBase
# time: 2017-03-22 14:21:00 EET
# mode: julia
	import StatsBase
# time: 2017-03-22 14:21:37 EET
# mode: julia
	import Winston
# time: 2017-03-22 14:21:46 EET
# mode: julia
	plot
# time: 2017-03-22 14:22:01 EET
# mode: julia
	Winston.plot([1,2,3],[4,5,6))
# time: 2017-03-22 14:22:04 EET
# mode: julia
	Winston.plot([1,2,3],[4,5,6])
# time: 2017-03-22 14:22:26 EET
# mode: julia
	import Winston: hist
# time: 2017-03-22 14:22:57 EET
# mode: help
	include
