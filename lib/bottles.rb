class Bottles
  def verse(num)
    <<~VERSE
      #{first_sentence(num)}
      #{second_sentence(num)}
    VERSE
  end

  def verses(start_verse, end_verse)
    range = end_verse..start_verse
    verse_numbers = range.to_a.reverse
    verse_numbers.map {|num| verse(num) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def bottle_word(num)
    if num > 1
      'bottles'
    else
      'bottle'
    end
  end

  def first_sentence(num)
    if num > 0
      "#{num} #{bottle_word(num)} of beer on the wall, #{num} #{bottle_word(num)} of beer."
    else
      "No more bottles of beer on the wall, no more bottles of beer."
    end
  end

  def second_sentence(num)
    if num > 1
      "Take one down and pass it around, #{num-1} #{bottle_word(num-1)} of beer on the wall."
    elsif num == 1
      "Take it down and pass it around, no more bottles of beer on the wall."
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end
end
