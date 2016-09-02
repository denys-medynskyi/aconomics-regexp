require_relative 'assert'

regex = /(\d{8})|(\d{2,4}[\.\/-]\d{2}[\.\/-]\d{2,4})|(\d+\.?\s[a-zA-Z]{3,4}\.?\s\d{4})/

# 20030613
# 13.06.2003
# 11/06/2016
# 11.06.2016
# 11-06-2016
# 2016-09-02
# 13. juni 2003
# 13. sep. 2003
# 11 jun 2003
# 1 mai 2016

# TEST
example = '20030613'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST
example = '2'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [])
# TEST
example = '13.06.03'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST
example = '13/06/2003'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST
example = '13-06-2003'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST
example = '2003-13-06'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST
example = '13. juni 2003'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])
# TEST
example = '13. sep. 2003'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])

# TEST
example = '13 mai 2003'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])

# TEST
example = '13 sep. 2003'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])


# TEST
example = '1 mai 2016'
text = "erik #{example} anders"
p assert(text.scan(regex).flatten.compact, [example])