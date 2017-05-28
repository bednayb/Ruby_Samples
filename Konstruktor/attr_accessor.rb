class Hello
  # here what is nil
  attr_accessor :what
  def init
    # here what will be this
    self.what = "this"
  end
end

class World
  def asd
    hello = Hello.new
    hello.init
    puts hello.what
  end
end

# this
World.new.asd
