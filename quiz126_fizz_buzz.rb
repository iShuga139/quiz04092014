class ModuloX
	def initialize
		@fizz = "Fizz"
		@buzz = "Buzz"
	end

	def modulo x
   	  case
	  when x % 5 == 0 && x % 3 ==0
		@fizz + @buzz
	   when x % 5 == 0
		@fizz
	   when x % 3 == 0
		@buzz
	   else
		x
	   end
	end
end

p = ModuloX.new
(1..100).each do |i|
   puts p.modulo i
end
