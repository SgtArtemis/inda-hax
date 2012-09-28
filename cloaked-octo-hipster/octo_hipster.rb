#STDIN.each_line do |line|
#  line.strip!
#end

def cool_function
  puts "Here comes the block!"
  i = 0
  while i < 100 do
    yield i
	i += 1
  end
  puts "There was the block!"
end

cool_function { |i| puts 'hej ' + i.to_s }


