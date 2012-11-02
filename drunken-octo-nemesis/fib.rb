@fib_results = {}

def fib(n)
  throw ":((((" if n < 0
  return n if n <= 1
  unless @fib_results.include? n
    @fib_results[n] = fib(n-1) + fib(n-2)
  end
  return @fib_results[n]
end

puts (fib ARGV[0].to_i)
