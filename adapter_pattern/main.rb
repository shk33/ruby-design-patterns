require "./Encrypter"
require "./StringIOAdapter"
require "./Render"
require "./TextObject"
require "./BritishTextObject"
require "./BritishTextObjectAdapter"

# Normal Use of Encrypter
reader = File.open('message.txt')
writer = File.open('message.encrypted','w')
encrypter = Encrypter.new('my secret key')
encrypter.encrypt(reader, writer)

# Using Encrypter with StrinIOAdapter
encrypter = Encrypter.new('XYZZY')
reader= StringIOAdapter.new('We attack at dawn')
writer=File.open('out.txt', 'w')
encrypter.encrypt(reader, writer)

renderer = Renderer.new
# Using Renderer with TextObject
text   = TextObject.new "Hello World", 2, 'Black'
renderer.render text

# Using Renderer with BritishTextObjectAdapter
brithish_text  = BritishTextObject.new "Hello Sir", 51.2, 'Obscure'
brithish_adapter = BritishTextObjectAdapter.new brithish_text
renderer.render brithish_adapter