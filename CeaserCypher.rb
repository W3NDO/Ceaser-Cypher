def CeaserEncrypt(shiftValue, msg)
  alpha = []
  for i in "A".."Z"
    alpha << i
  end
  cypher = []
  words = msg.upcase.split(' ')
  for i in 0..words.length-1
    newWord = []
    word = words[i].split('')
    for j in 0..word.length-1
      
      index = alpha.index(word[j])
      newIndex = index + shiftValue
      if (newIndex>26)
        newIndex = (26-newIndex).abs
      end
      if (alpha.include?(word[j]))
        newWord << alpha[newIndex]
      end
      
    end
    cypher << newWord.join('')
  end
  final = cypher.join(" ")
  puts final
end

def CeaserDecrypt(shiftValue, msg)
  alpha = []
  for i in "A".."Z"
    alpha << i
  end
  cypher = []
  words = msg.upcase.split(' ')
  for i in 0..words.length-1
    newWord = []
    word = words[i].split('')
    for j in 0..word.length-1
      
      index = alpha.index(word[j])
      newIndex = index - shiftValue
      if (newIndex<0)
        newIndex = (26+newIndex).abs
      end
      if (alpha.include?(word[j]))
        newWord << alpha[newIndex]
      end
      
    end
    cypher << newWord.join('')
  end
  final = cypher.join(" ")
  puts final
end

CeaserEncrypt(5, "CORONA")
CeaserDecrypt(5, "HTWTSF")