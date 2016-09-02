require 'colorize'

def assert(value1, value2)
  if value1 === value2
    puts "Success".colorize(:green)
  else
    puts "Failure. `#{value1.inspect}` is not equal `#{value2.inspect}`".colorize(:red)
  end

end