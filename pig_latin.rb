class PigLatin
  
  VOWELS = %w(a e i o u)
  CONSONANTS = ("a".."z").to_a - VOWELS
  CONSONANT_SOUND_GROUP = %w(ch)
  VOWEL_SOUND_GROUP = []
 
  def self.translate(word)
   
  # prefixes.each do |pre|
  #     if word.match? pre
  #     rest = word.slice((pre.length)..-1)
  #     return rest + "#{pre}ay"
  #     end
  # end
  

   if self.vowel_sound?(word)
     word + "ay"
   elsif self.consonant_sound?(word)
     rest = word.slice!(1..-1)
     rest + "#{word[0]}ay"
   end
  end
  
  def self.consonant_sound?(word)
    arr = CONSONANT_SOUND_GROUP + CONSONANTS
    arr.any? do |con|
      word.start_with?(con)
    end
  end
  
  def self.vowel_sound?(word)
  arr = VOWELS + VOWEL_SOUND_GROUP
   arr.any? do |pre|
     word.start_with?(pre)
   end
  end


end