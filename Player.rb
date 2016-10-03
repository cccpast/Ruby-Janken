require_relative "RandomHand"
require_relative "AskHand"

class Player

  attr_reader :tactics
  attr_accessor :name
  
  def initialize(tactics, name="プレイヤ")
    @tactics = tactics
    @name = name
  end

  # ジャンケンの手を出す
  def outputHand
    return @tactics.returnHand
  end
  
end