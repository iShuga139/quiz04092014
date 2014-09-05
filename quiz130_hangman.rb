@total_word ||= []
@temp_word ||= []
@count_error ||= 0

def read_file
	file_name = 'words.txt'
        File.read file_name
end

def clear_screen
	system "clear"
end

def validate_letter letter
	if letter.length > 0
		count_word = 0
		position_letter = 0
		@total_word.each do |w|
			if w.downcase == letter.downcase
				count_word = count_word + 1
				@temp_word[position_letter] = letter
			end
			position_letter = position_letter + 1
		end
		return count_word
	else
	   	return -1
	end
end

def initialize word
 	(0..word.length-1).each do |w|
	  @total_word[w] = word[w]
	  @temp_word[w] = ''
	end
end

list_words = read_file.split(',')
num_rnd = rand(list_words.length)
word_of_list = list_words[num_rnd].chomp
letter = String.new
initialize word_of_list
validate_result  ||= 0
while @count_error < 3 || @temp_word != @total_word
clear_screen
	@temp_word.each do |l|
		if l.length > 0
			print "_#{l}_  "
		else
			print "___  "
		end
	end
	puts "\n"*2
	if @total_word == @temp_word
		puts 'You win...'
		break
	else
		print 'Put a letter....  '
		letter = gets.chomp
	end
	validate_result = validate_letter letter
	if validate_result < 0
		puts 'Put a valid letter...'
	else
		if validate_result == 0
			puts 'Incorrect letter...'
			@count_error = @count_error + 1
			if @count_error == 3
				puts 'Sorry, you lose...'
				break
			end
		else
			puts "Great! you match #{validate_result.to_s} letter(s)"
		end
	end
  sleep 1
end
