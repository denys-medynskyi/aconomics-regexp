require 'colorize'

def assert(value1, value2)
  if value1 === value2
    puts "Success".colorize(:green)
  else
    puts "Failure. `#{value1.inspect}` is not equal `#{value2.inspect}`".colorize(:red)
  end

end


regex = /(NOK\s?\d+)|(\d+\s?kr)|(kr\s?\d+[,|\.]?\d+)|(\d+[,|\.]?\d+)/
# TEST 1
example = 'NOK 52'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST 2
example = '52kr'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST 3
example = 'kr 52'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST 4
example = 'kr 52,5'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST 5
example = 'kr 52.0'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST 6
example = 'abc'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [])
# TEST 7
example = '1'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [])
# TEST 8
example = 'kr52'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])


# real text example

text = "OSLO S - OSLO LUFTHAVN 12. jun 2015 Avreise: 06:24 Ankomst: 06:47 Ingen bestemt plass 3 Voksne Pris: 249,99- Total Pris: 249,99- Mva: 8% Gr.lag: 249,99 Mva kr: 20,01"

# Real Text 1
p assert(text.scan(regex).flatten.compact, ["12", "2015", "06", "24", "06", "47", "249,99", "249,99", "249,99", "20,01"])

# Real Text 2
text = "OSLO S 270.5"

p assert(text.scan(regex).flatten.compact, ['270.5'])

# Real Text 3
text = "OSLO S 270"

p assert(text.scan(regex).flatten.compact, ['270'])






