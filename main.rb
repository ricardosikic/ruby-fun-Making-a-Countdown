require_relative 'Error.rb'

def countDown(num, txt)

  newArr = Array.new
  
  begin 
    num.downto(0) do |n|
    if n === 0
      newArr.push(txt.upcase + '!')
      break
    end
    newArr << n.to_s + '. '
  end
  puts newArr.join('')

  rescue
    puts Error.integerErrorType
  end
end

countDown(10, "Blast Off")

#Create a function where given the number n to count down from, and some words txt, return a countdown sequence as a string leading up to the words at the end.

#Put a full stop after each number and uppercase and add an exclamation mark to the word. See the examples below for clarification!

#countdown(10, "Blast Off") ➞ "10. 9. 8. 7. 6. 5. 4. 3. 2. 1. BLAST OFF!"
#countdown(3, "go") ➞ "3. 2. 1. GO!"
#countdown(5, "FIRE") ➞ "5. 4. 3. 2. 1. FIRE!"