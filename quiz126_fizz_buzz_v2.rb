def modulo x
   fizz = 'Fizz'
   buzz = 'Buzz'
   case
   when x % 5 == 0 && x % 3 ==0
	fizz + buzz
   when x % 5 == 0
	fizz
   when x % 3 == 0
	buzz
   else
	x
   end
end

(1..100).each { |i|   puts modulo i }
