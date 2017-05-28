def Greeting(name, &block)
  puts "begin"
  puts name
  yield
  puts "end"
end

def Main
  Greeting("Zoli") do |c|
    puts "Ricsi"
  end
  puts "last end"
end

#  begin - Zoli - Ricsi - end - last end
Main()
