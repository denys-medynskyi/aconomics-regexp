require_relative 'assert'
regex = /(\b\d{9}\b)|(\b\d{3}\b\s\b\d{3}\b\s\b\d{3}\b)/

# * 996678601
# * 996 678 601

# TEST
example = '123456789'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])

# TEST
example = '1234567890'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [])

# TEST
example = '1'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [])

# TEST
example = '996 678 601'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])

# TEST
example = '996  678  601'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [])


# TEST
example = '9961 111 111'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [])
