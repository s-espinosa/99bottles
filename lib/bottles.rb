class Bottles
  def verse(number)
    if number > 0
      "#{number_to_bottles(number)} of beer on the wall, #{number_to_bottles(number)} of beer.\nTake one down and pass it around, #{number_to_bottles(number - 1)} of beer on the wall.\n"
    #if number > 2
    #  "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottles of beer on the wall.\n"
    #elsif number == 2
    #   "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number - 1} bottle of beer on the wall.\n"
    #elsif number == 1
    #  "#{number} bottle of beer on the wall, #{number} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(first, last)
    all_verses = []
    until first == last - 1
      all_verses << verse(first)
      first -= 1
    end
    all_verses.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def number_to_bottles(number)
    if number == 1
      "1 bottle"
    elsif number == 0
      "no more"
    else
      "#{number} bottles"
    end
  end
end
