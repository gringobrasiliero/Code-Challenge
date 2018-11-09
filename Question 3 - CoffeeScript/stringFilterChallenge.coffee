text = '''I pledge allegiance to the Flag of the United States of America,
 and to the Republic for which it stands, one Nation under God,
 indivisible, with liberty and justice for all, should be rendered
 by standing at attention facing the flag with the right hand over
 the heart. When not in uniform men should remove any non-religious
headdress with their right hand and hold it at the left shoulder,
the hand being over the heart. Persons in uniform should remain
silent, face the flag, and render the military salute.'''


counter = (text, every_words, vowel_min, every_lines) ->
  lines = text.split "\n" #Separates into seperate lines
  numLines = 0
  numWords = 0
  vowel_list = 'aeiouAEIOU'
  for line, i in lines
    if (i+1) % every_lines == 0
      numLines += 1
      words = line.split " "
      countWords = 0
      for word, i in words
        if (i+1) % every_words == 0
          vowels = 0
          for letter, i in word
            if (vowel_list.indexOf(letter)) != -1
              vowels += 1
          if vowels >= vowel_min
            numWords += 1
  results = "Lines: " + numLines + " Words: " + numWords
  console.log(results)
  return results

counter(text,3,2,2)
