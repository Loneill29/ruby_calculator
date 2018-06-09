def menu
  system "clear"
  puts "Welcome! What would you like to do?"
  puts "1 - Calculate an equation"
  puts "2 - Exit"
  print "Please enter your selection: "

  prompt = gets.chomp
  answer = 0

  if prompt == "1"
    puts "Please enter your equation"
    prompt = gets.chomp.split(//)

    until prompt.length == 1 do
      if prompt.include?("*") || prompt.include?("/")
        prompt.each_with_index do |operator, index|
          if operator == "*" || operator == "/"
            if operator == "*"
              answer = prompt[index-1].to_i * prompt[index+1].to_i
            elsif operator == "/"
              answer = prompt[index-1].to_i / prompt[index+1].to_i
            end

            prompt.delete_at(index-1)
            prompt.delete_at(index-1)
            prompt.delete_at(index-1)

            prompt.insert(index-1, answer)
            end
          end

      elsif prompt.include?("+") || prompt.include?("-")
        prompt.each_with_index do |operator, index|
          if operator == "+" || operator == "-"
            if operator == "+"
              answer = prompt[index-1].to_i + prompt[index+1].to_i
            elsif operator == "-"
              answer = prompt[index-1].to_i - prompt[index+1].to_i
            end

            prompt.delete_at(index-1)
            prompt.delete_at(index-1)
            prompt.delete_at(index-1)

            prompt.insert(index-1, answer)
        end
      end
    end
  end

  puts "#{answer}"
  repeat

  elsif prompt == "2"
    puts "Goodbye!"
    exit (0)
  end
end

def repeat
  puts "Would you like to make another selection? Y/N"
  prompt = gets.chomp

  if prompt == "Y"
    menu

  elsif prompt == "N"
    puts "Goodbye!"
    exit (0)

  else
    puts "Your entry was invalid. Please try again."
    repeat
  end
end

menu
