class AskHand

  # ジャンケンの数値を+1しているのは、わからない文字を
  # 入れられるとgetsは0を返すため
  def returnHand
    handNumber = -1

    puts "ジャンケンの手を入力(1->グー, 2->チョキ, 3->パー)"
	loop do
       print "> "
       handNumber = gets.to_i
       break if handNumber == 1 || handNumber == 2 || handNumber == 3
	end

    return handNumber - 1
  end

end