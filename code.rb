def caesar_cipher(string, number)
  characters = string.split('')

  characters.each_with_index do |character, index|
    if character =~ /[a-z]/
      ascii = character.ord
      if (ascii + number) > 122
        characters[index] = ((((ascii + number) - 122) % 26) + 98).chr
      else
        characters[index] = (ascii + number).chr
      end
    elsif character =~ /[A-Z]/
      ascii = character.ord
      if (ascii + number) > 90
        characters[index] = ((((ascii + number) - 90) % 26) + 66).chr
      else
        characters[index] = (ascii + number).chr
      end
    end
  end

  return characters.join('')
end

puts caesar_cipher("Caesar", 2)
puts caesar_cipher("a", 2)
puts caesar_cipher("Caesar", 52)
