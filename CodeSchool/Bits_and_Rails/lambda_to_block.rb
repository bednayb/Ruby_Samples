tweets = ["First", "Second"]

tweets.each do |tweet|
  puts tweet
end
# -->first second
puts "----------------"

 # printer_1 will run
printer_1 = tweets.each do |tweet|
  puts tweet
end

puts "----------------"
# not run here
printer_with_lambda = lambda { |tweet| puts tweet}

# with the & its turn back a block
# run here
tweets.each(&printer_with_lambda)
# -->first second
puts "----------------"
# alternative lambda
alter_lambda = -> {puts tweets}
# first second
alter_lambda.call
# long stuff
puts alter_lambda



timeline = Timeline.new

puts "----------------"
class Timeline
  attr_accessor :posts

  def each(&block)
    posts.each(&block)
  end
end
