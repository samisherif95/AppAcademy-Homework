class Board

  attr_accessor :cups
  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14){Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
      @cups.each_with_index do |cup,idx|
        next if idx == 6 || idx == 13
        4.times do 
          cup << :stone
        end
      end
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos > 14 || start_pos < 0 
    raise 'Starting cup is empty' if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    result = []
    while !cups[start_pos].empty?
      result << cups[start_pos].shift
    end

    cup_index = start_pos
    until result.empty?
      cup_index+=1
      cup_index =  0 if cup_index > 13
      if cup_index == 6
        @cups[cup_index] << result.pop if current_player_name == @name1
      elsif cup_index == 13
         @cups[cup_index] << result.pop if current_player_name == @name2
      else
        @cups[cup_index] << result.pop
      end
    end
    render
    #next_turn

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
