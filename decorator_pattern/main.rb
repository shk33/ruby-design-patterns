require "./enhanced_writer"
require "./simple_writer"
require "./numbering_writer"
require "./check_summing_writer.rb"
require "./time_stampering_writer.rb"

writer = EnhancedWriter.new 'out.txt'
writer.write_line "A plain line"
puts "Plain Text Written" 

writer.checksumming_write_line 'A line with checksum'
puts "Checksum is #{writer.check_sum}" 

writer.timestamping_write_line 'with time stamp'
writer.numbering_write_line 'with line number'

puts "final.txt written with numbering decorators" 
writer = NumberingWriter.new(SimpleWriter.new('final.txt'))
writer.write_line('Hello out there')

puts "concat.txt written with all decorators" 
writer = CheckSummingWriter.new(TimeStampingWriter.new(
                                  NumberingWriter.new(
                                    SimpleWriter.new('concat.txt'))))
writer.write_line('Hello out there')
writer.write_line('Bye')