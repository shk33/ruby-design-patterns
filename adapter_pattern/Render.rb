class Renderer
  def render(text_object)
    text = text_object.text
    size = text_object.size_inches
    color = text_object.color

    puts "Text: #{text}, size: #{size}, color: #{color}"
  end
end