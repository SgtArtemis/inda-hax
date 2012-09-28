class String
  def palindrome?
    return self == self.reverse
  end
end

STDIN.each_line do |line|
  line.strip!
  puts line if line.palindrome?
end


