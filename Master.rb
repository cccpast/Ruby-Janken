require_relative "Player"

class Master

  HAND = [
    "グー", "チョキ", "パー"
  ]

  # ゲーム進行
  def gameStart
    # 戦術のインスタンス化
    ask_tactice = AskHand.new()
    random_tactice = RandomHand.new()
  
    # 各プレイヤのインスタンス化
    player = Player.new(ask_tactice)
    cpu = Player.new(random_tactice, "CPU")

    puts player.name + " vs " + cpu.name
    puts "ジャンケン開始"
    sleep(1)
    
    # 勝者プレイヤをリターン
    winner = jankenPlay(player, cpu)

    if winner == player
	  puts player.name + "の勝ち"
    elsif winner == cpu
	  puts cpu.name + "の勝ち"
    else
	  puts "ドロー"
    end
  end

  # ジャンケンする
  def jankenPlay(player1, player2)
    winner = nil

    p1Hand = player1.outputHand()
    p2Hand = player2.outputHand()

    # 手の表示
    puts player1.name + "の手: " + printHand(p1Hand)
    puts player2.name + "の手: " + printHand(p2Hand)
    sleep(1)

    # 勝敗の判断
    if p1Hand == 0 && p2Hand == 1 ||
        p1Hand == 1 && p2Hand == 2 ||
        p1Hand == 2 && p2Hand == 0
        winner = player1
    elsif p1Hand == 0 && p2Hand == 2 ||
        p1Hand == 1 && p2Hand == 0 ||
        p1Hand == 2 && p2Hand == 1
        winner = player2
    end

    return winner
  end
  
    # ジャンケンの手を表示可能な形に変更(定数からとってくる)
  def printHand(handNum)
    return Master::HAND[handNum]
  end

end