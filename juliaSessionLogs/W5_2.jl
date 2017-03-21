# time: 2017-03-18 06:43:57 EET
# mode: julia
	# We start by defining an immutable card type
	immutable Card{TS,TR}
	   suit :: TS
	   rank :: TR
	end
# time: 2017-03-18 06:44:37 EET
# mode: julia
	myCard=Card('T','1')
# time: 2017-03-18 06:44:45 EET
# mode: julia
	print(myCard)
# time: 2017-03-18 06:44:58 EET
# mode: julia
	#Modifying how the the Card type prints 
	string(b::Card)="$(b.suit)$(b.rank)"
# time: 2017-03-18 06:44:58 EET
# mode: julia
	print(io::IO, x::Card) = print(io, string(x))
# time: 2017-03-18 06:45:03 EET
# mode: julia
	show(io::IO, x::Card) = print(io,  x)
# time: 2017-03-18 06:45:25 EET
# mode: julia
	import Base.print
# time: 2017-03-18 06:45:36 EET
# mode: julia
	methods(print)
# time: 2017-03-18 06:45:47 EET
# mode: julia
	#Modifying how the the Card type prints 
	string(b::Card)="$(b.suit)$(b.rank)"
# time: 2017-03-18 06:45:47 EET
# mode: julia
	print(io::IO, x::Card) = print(io, string(x))
# time: 2017-03-18 06:45:49 EET
# mode: julia
	show(io::IO, x::Card) = print(io,  x)
# time: 2017-03-18 06:45:53 EET
# mode: julia
	methods(print)
# time: 2017-03-18 06:46:16 EET
# mode: julia
	print(myCard)
# time: 2017-03-18 06:47:25 EET
# mode: julia
	suits = "SHDC"
# time: 2017-03-18 06:47:26 EET
# mode: julia
	ranks = "A23456789TJQK"
# time: 2017-03-18 06:47:32 EET
# mode: julia
	deck  = [ Card(s,r) for r in ranks for s in suits ]
# time: 2017-03-18 06:47:56 EET
# mode: julia
	suits
# time: 2017-03-18 06:48:11 EET
# mode: julia
	[s for s in suits]
# time: 2017-03-18 06:48:23 EET
# mode: julia
	deck
# time: 2017-03-18 06:48:45 EET
# mode: julia
	length(deck)
# time: 2017-03-18 06:50:09 EET
# mode: julia
	using Combinatorics
# time: 2017-03-18 06:50:09 EET
# mode: julia
	"All combinations of n items; each combo as a concatenated str."
	function combos(items, n)
	    combs=combinations(items,n)
	    collect(combs)
	end
# time: 2017-03-18 06:50:30 EET
# mode: julia
	Hands = combos(deck, 5)
# time: 2017-03-18 06:50:32 EET
# mode: julia
	@assert length(Hands) == binomial(52, 5)
# time: 2017-03-18 06:51:31 EET
# mode: julia
	sample(Hands, 5)
# time: 2017-03-18 06:51:37 EET
# mode: julia
	using StatsBase
# time: 2017-03-18 06:51:39 EET
# mode: julia
	sample(Hands, 5)
# time: 2017-03-18 06:51:56 EET
# mode: julia
	#Modifying how the the Card type prints 
	string(b::Card)="$(b.suit)$(b.rank)"
# time: 2017-03-18 06:51:56 EET
# mode: julia
	print(io::IO, x::Card) = print(io, string(x))
# time: 2017-03-18 06:51:58 EET
# mode: julia
	show(io::IO, x::Card) = print(io,  x)
# time: 2017-03-18 06:52:02 EET
# mode: julia
	sample(Hands, 5)
# time: 2017-03-18 06:54:06 EET
# mode: julia
	count_hand_suit(hand,suit)=count(x->x.suit==suit,hand)
# time: 2017-03-18 06:54:36 EET
# mode: julia
	Hands[1]
# time: 2017-03-18 06:54:55 EET
# mode: julia
	Hands[2422]
# time: 2017-03-18 06:55:35 EET
# mode: julia
	count_hand_suit(Hands[2422],'S')
# time: 2017-03-18 06:55:41 EET
# mode: julia
	count_hand_suit(Hands[2422],'H')
# time: 2017-03-18 06:56:00 EET
# mode: julia
	count_hand_rank(hand,rank)=count(x->x.rank==rank,hand)
# time: 2017-03-18 06:56:32 EET
# mode: julia
	count_hand_rank(Hands[2422],'A')
# time: 2017-03-18 06:56:35 EET
# mode: julia
	count_hand_rank(Hands[2422],'2')
# time: 2017-03-18 06:56:41 EET
# mode: julia
	count_hand_rank(Hands[2422],'1')
# time: 2017-03-18 06:56:43 EET
# mode: julia
	count_hand_rank(Hands[2422],'9')
# time: 2017-03-18 06:59:37 EET
# mode: julia
	[count_hand_suit(Hands[2422],'S') == 5 for suit in suits]
# time: 2017-03-18 07:00:11 EET
# mode: julia
	(count_hand_suit(Hands[2422],'S') == 5 for suit in suits)
# time: 2017-03-18 07:00:55 EET
# mode: julia
	for cond in (count_hand_suit(Hands[2422],'S') == 5 for suit in suits)
	     print(cond)
	end
# time: 2017-03-18 07:01:01 EET
# mode: julia
	for cond in (count_hand_suit(Hands[2422],'S') == 5 for suit in suits)
	     println(cond)
	end
# time: 2017-03-18 07:01:30 EET
# mode: julia
	any([false false])
# time: 2017-03-18 07:01:33 EET
# mode: julia
	any([false false false])
# time: 2017-03-18 07:01:39 EET
# mode: julia
	any([false true false])
# time: 2017-03-18 07:16:48 EET
# mode: julia
	Hneeds=2
# time: 2017-03-18 07:16:57 EET
# mode: julia
	Tneeds=3
# time: 2017-03-18 07:17:32 EET
# mode: julia
	rounds = ["ht" for _ in 1:(Hneeds + Tneeds - 1)]
# time: 2017-03-18 07:19:00 EET
# mode: julia
	Base.product(rounds...) #Splating
# time: 2017-03-18 07:19:11 EET
# mode: help
	Base.product
# time: 2017-03-18 07:19:44 EET
# mode: julia
	Base.product(rounds...)
# time: 2017-03-18 07:19:52 EET
# mode: julia
	p=Base.product(rounds...)
# time: 2017-03-18 07:20:00 EET
# mode: julia
	collect(p)
# time: 2017-03-18 07:20:33 EET
# mode: julia
	reshape(collect(p),length(p),1)
