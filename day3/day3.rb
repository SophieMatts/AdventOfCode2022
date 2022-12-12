class Day3

  def initialize(filename)
    @lines = File.readlines(filename)
  end

  def find_repeat(half1_split, half2_split)
    half1_split.each do |l|
      if half2_split.include?(l)
        return l
      end
    end
  end

  def find_score_for_letter(letter)
    if letter.ord < 97
      # then it's a capital
      return letter.ord - 38
    else
      # it's lower case
      return letter.ord - 96
    end
    # puts "A has ord value #{'A'.ord}, we want #{'A'.ord - 38}"
    # puts "b has ord value #{'b'.ord}, we want #{'b'.ord - 96}"
    # puts "c has ord value #{'c'.ord}, we want #{'c'.ord - 96}"
    # puts "#{letter} has ord value #{letter.ord}, we want #{letter.ord - 96}"
    # return 0
  end


  def part1
    half1 = ""
    half2 = ""
    total_score = 0

    @lines.each do |line|
      #Splits lines into two equal parts
      half1 = line[0, line.length/2]
      half2 = line[line.length/2, line.length]
      half1_split = half1.split("")
      half2_split = half2.split("")

      repeating_letter = find_repeat(half1_split, half2_split)
      score_for_repeating_letter = find_score_for_letter(repeating_letter)
      total_score += score_for_repeating_letter
    end

    return total_score
  end






end
