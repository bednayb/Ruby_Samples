# class Library
#   def method_missing(name, *args)
#     puts  "You tried to call #{name} with these arguments: #{args}"
#   end
# end
#
#
# Library.new.submit(3,"cica")
# Library.new.alma(3,"korte")

require 'delegate'

class Library < SimpleDelegator
  def initialize(console)
    super(console)
  end
end

Library.new.initialize()
