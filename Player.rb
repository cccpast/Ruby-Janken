require_relative "RandomHand"
require_relative "AskHand"

class Player

  attr_reader :tactice
  attr_accessor :name
  
  def initialize(tactice, name="プレイヤ")
    @tactice = tactice
    @name = name
  end

  # ジャンケンの手を出す
  def outputHand
    return @tactice.returnHand
  end
  
end