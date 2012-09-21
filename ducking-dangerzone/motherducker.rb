@epname_regex = /s(\d\d)e(\d\d)/i
@file_end_regex = /[^.]+$/
@separators = /[.\-_]/
@no_upcase = ["in", "of", "the", "and"]
@name_separator = ' '

def fix_series series
  split_name = series.split.each_with_index do |word, index|
    word.downcase!
    word.capitalize! if (not @no_upcase.include? word) or index == 0
  end.join @name_separator
end

def split_hax filename
  series = filename.split(@epname_regex).first
  series.gsub! @separators, ' '
  series.strip!
  series = fix_series(series)

  match = filename.match @epname_regex
  season = match[1]#.to_i
  episode = match[2]#.to_i

  file_end = filename[@file_end_regex]

  "#{series}.S#{season}E#{episode}.#{file_end}"
end

STDIN.each_line do |filename|
  filename.strip!
  puts "#{filename} => #{split_hax filename}"
end
