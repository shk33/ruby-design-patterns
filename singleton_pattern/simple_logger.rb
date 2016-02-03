class SimpleLogger

  private_class_method :new
  
  @@instance = SimpleLogger.new
  def self.instance
    return @@instance
  end

end