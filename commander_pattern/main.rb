require "./SlickButton"
require "./SaveCommand"
require "./CompositeCommand"
require "./CreateFile"
require "./CopyFile"
require "./DeleteFile"

# Example 1
save_button = SlickButton.new( SaveCommand.new )
save_button.on_button_push

# Example 2
cmds = CompositeCommand.new
cmds.add_command(CreateFile.new('file1.txt', "hello world\n"))
cmds.add_command(CopyFile.new('file1.txt', 'file2.txt'))
cmds.add_command(DeleteFile.new('file1.txt'))

cmds.execute
puts cmds.description