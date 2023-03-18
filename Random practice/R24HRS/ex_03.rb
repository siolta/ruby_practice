def sample_block
  puts "the starting point"
  yield
  yield
  puts "the endpoint"
end

sample_block { puts "the midpoint" }
