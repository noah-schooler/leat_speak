def leet_speak(sentence)
  word_array = sentence.split(" ")
  sentence = []
  word_array.each do |word|
    leet_word = []
    letters_array = word.split("")
    counter = 0
    letters_array.each do |letter|
      if letter === "e"
        leet_word.push("3")
      elsif letter === "o"
        leet_word.push("0")
      elsif letter === "I"
        leet_word.push("1")
      elsif letter === "s"
        if counter === 0 && letters_array[0] === "s"
          leet_word.push("s")
          counter += 1
        else
          leet_word.push("z")
        end
      else
        leet_word.push(letter)
      end
    end
    sentence.push(leet_word.join(""))
  end
  sentence.join(" ")
end
