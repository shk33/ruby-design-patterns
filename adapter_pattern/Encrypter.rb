class Encrypter
  def initialize(key)
    @key = key
  end

  def encrypt(reader, writer)
    key_index = 0
    while not reader.eof?
      clear_char = reader.getc
      encrypted_char = xor clear_char , @key[key_index]
      if encrypted_char
        writer.putc(1)
      else
        writer.putc(0)
      end
      key_index = (key_index + 1) % @key.size
    end
  end

  def xor(a,b)
    (a and (not b)) or ((not a) and b)
  end

end