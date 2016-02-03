require "./class_variable_tester"
require "./simple_logger"

c1 = ClassVariableTester.new
c1.increment
c1.increment
puts("c1: #{c1}")
c2 = ClassVariableTester.new
puts("c2: #{c2}")

#Logger
logger1 = SimpleLogger.instance # Returns the logger
logger2 = SimpleLogger.instance # Returns exactly the same logger
logger1.info('Computer wins chess game.')
logger1.warning('AE-35 hardware failure predicted.')
logger2.error('HAL-9000 malfunction, take emergency action!')
