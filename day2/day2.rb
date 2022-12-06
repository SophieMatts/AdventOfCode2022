class Day2

  def initialize(filename)
    @lines = File.readlines(filename)
  end

  def part1

    my_score = 0

    # rock, paper, scissors

    @lines.each do |line|
      if line.include?('X') # you are rock.
        my_score += 1
        if line.include?('A') # they are rock.
          my_score += 3
        elsif line.include?('B') # they are paper.
          my_score += 0
        else line.include?('C') # they are scissors.
          my_score += 6
        end
      elsif line.include?('Y') # you are paper.
        my_score += 2
        if line.include?('A') # they are rock.
          my_score += 6
        elsif line.include?('B') # they are paper.
          my_score += 3
        else line.include?('C') # they are scissors.
          my_score += 0
        end
      else line.include?('Z') # you are scissors.
        my_score += 3
        if line.include?('A') # they are rock.
          my_score += 0
        elsif line.include?('B') # they are paper.
          my_score += 6
        else line.include?('C') # they are scissors.
          my_score += 3
        end
      end
    end
    return my_score

  end
end
