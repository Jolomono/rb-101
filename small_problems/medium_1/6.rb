def minilang(command_string)
  command_arr = command_string.split
  register = 0
  stack = []

  command_arr.each do |command|
    case command
    when command.to_i.to_s # when it's a number
      register = command.to_i
    when "PUSH"
      stack << register
    when "ADD"
      register += stack.pop
    when "SUB"
      register -= stack.pop
    when "MULT"
      register *= stack.pop
    when "DIV"
      register /= stack.pop
    when "MOD"
      register %= stack.pop
    when "POP"
      register = stack.pop
    when "PRINT"
      puts register
    end
  # puts "command: #{command}"
  # display_current(register, stack)
  end
end

def display_current(register, stack)
  puts "Register: #{register}"
  puts "Stack: #{stack}"
end

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')

minilang('-3 PUSH 5 SUB PRINT')