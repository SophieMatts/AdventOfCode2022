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

  def find_repeat_from_lines(line1, line2, line3)
    line1.each do |l|
      if line2.include?(l) && line3.include?(l)
        return l
      end
    end
  end

  def part2
    total_score = 0
    sections = @lines.each_slice(3).to_a

    sections.each do |section|
      repeating_letter = find_repeat_from_lines(section[0].split(""), section[1].split(""), section[2].split(""))

      score_for_repeating_letter = find_score_for_letter(repeating_letter)
      total_score += score_for_repeating_letter
    end
    return total_score
  end


end
