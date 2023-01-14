require 'pry'

def minilang(commands)
  code = commands.split
  stack = []
  n = 0
  
  code.each do |command|
    if command.to_i.to_s == command
      n = command.to_i
    elsif command == 'PUSH'
      stack.push(n)
    elsif command == 'ADD'
      n += stack.pop
    elsif command == 'SUB'
      n -= stack.pop
    elsif command == 'MULT'
      n *= stack.pop
    elsif command == 'DIV'
      n /= stack.pop
    elsif command == 'MOD'
      n %= stack.pop
    elsif command =='POP' 
      n = stack.pop
    elsif command == 'PRINT' 
      puts n
    else
      next
    end
  end
end


def minilang2(commands)
  code = commands.split
  stack = []
  n = 0
  
  code.each do |command|
    case command
    when 'PUSH'  then stack.push(n)
    when 'ADD'   then n += stack.pop
    when 'SUB'   then n -= stack.pop
    when 'MULT'  then n *= stack.pop
    when 'DIV'   then n /= stack.pop
    when 'MOD'   then n %= stack.pop
    when 'POP'   then n = stack.pop
    when 'PRINT' then puts n
    else         n = command.to_i
    end
  end
end



minilang2('PRINT')
# 0

minilang2('5 PUSH 3 MULT PRINT')
# 15

minilang2('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang2('5 PUSH POP PRINT')
# 5

minilang2('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang2('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang2('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang2('-3 PUSH 5 SUB PRINT')
# 8

minilang2('6 PUSH')
# (nothing printed; no PRINT commands)

# (3 + (4 * 5) - 7) / (5 % 3) == 8