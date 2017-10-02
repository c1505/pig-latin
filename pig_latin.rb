class PigLatin
  VOWELS = %w(a e i o u)
  VOWEL_SOUND_GROUP = %w(yt xr)
  CONSONANTS = ("a".."z").to_a - VOWELS
  CONSONANT_SOUND_GROUP = %w(sch ch squ thr th qu)


  def self.translate(phrase)
   phrase.split(" ").map do |word|
     self.translate_word(word)
   end.join(" ")
  end

  def self.translate_word(word)
    if self.vowel_sound?(word)
      word + "ay"
    elsif self.consonant_sound?(word)
      prefix = self.prefix(word, CONSONANT_SOUND_GROUP + CONSONANTS)
      rest = word.slice(( prefix.length)..-1)
      rest + "#{prefix}ay"
    end
  end

  def self.consonant_sound?(word)
    arr = CONSONANT_SOUND_GROUP + CONSONANTS
    arr.any? do |con|
      word.start_with?(con)
    end
  end

  def self.vowel_sound?(word)
  arr = VOWEL_SOUND_GROUP + VOWELS
   arr.any? do |pre|
     word.start_with?(pre)
   end
  end

  def self.prefix(word, arr)
    arr.find{ |pre| word.start_with?(pre)}
  end

end
module BookKeeping
  VERSION = 1
end