def baloon_msg
	line_width = 40
	puts  '   --------------------------'.ljust(line_width)
	puts  ' /                           \\'.ljust(line_width)
	puts  '|  Hello.......                |'.ljust(line_width)
	puts  '|  By iShuga                   |'.ljust(line_width)
	puts  ' \                            /'.ljust(line_width)
        puts  '   ---------------------    -'.ljust(line_width)
	puts  '                         \  \\'.ljust(line_width)
end

def draw_duck
	puts '                    _.._'
	puts '                   /   a\__,'
	puts '                   \  -.___/'
	puts '                    \  \\'
 	puts '               (\____)  \\'
	puts '           |\_(         ))'
	puts '      _____|   (_        /________'
	puts '           _\____(______/__'
	puts '                ______'
	puts "Created >>>> #{Time.new}"
end

baloon_msg
draw_duck
