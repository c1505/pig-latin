class PigLatin
  
  VOWELS = %w(a e i o u)
  CONSONANTS = ("a".."z").to_a - VOWELS
  PREFIXES = %w(sch qu thr th ch yt xr)
 
  def self.translate(word)
   
  # prefixes.each do |pre|
  #     if word.match? pre
  #     rest = word.slice((pre.length)..-1)
  #     return rest + "#{pre}ay"
  #     end
  # end
  
   if self.starts_with_prefix?(word)
     rest = word.slice((pre.length)..-1)
     rest + "#{pre}ay"
   elsif self.starts_with_vowels?(word)
     word + "ay"
   elsif self.starts_with_consonants?(word)
     rest = word.slice!(1..-1)
     rest + "#{word[0]}ay"
   end
  end
  
  def self.starts_with_consonants?(word)
    CONSONANTS.any? do |con|
      word.start_with?(con)
    end
  end
  
  def self.starts_with_vowels?(word)
   VOWELS.any? do |vow|
     word.start_with?(vow)
   end
  end
  
  def self.starts_with_prefix?(word)
   PREFIXES.any? do |pre|
     word.start_with?(pre)
   end
  end
end