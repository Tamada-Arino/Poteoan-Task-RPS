def rps_text(hand)
    case hand
    when 0
        return "グー"
    when 1
        return "チョキ"
    else
        return "パー"
    end
end

def direction_text(direction)
    case direction
    when 0
        return "上"
    when 1
        return "右"
    when 2
        return "下"
    else
        return "左"
    end
end

puts "じゃんけん・・・"
loop do
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    hand = gets.to_i

    if hand >= 0 && hand <=2
        comhand = rand(2)
        jdg = (hand-comhand+3)%3

        puts "ホイ！"
        puts "--------"
        puts "あなた：#{rps_text(hand)}を出しました"
        puts "相手：#{rps_text(comhand)}を出しました"
        puts "--------"

        if jdg == 0
            puts "あいこで・・・"
            next
        elsif jdg == 1
            winner = "相手"
        elsif jdg == 2
            winner = "あなた"
        end

        puts "あっち向いて・・・"
        puts "0(上)1(右)2(下)3(左)"
        direction = gets.to_i
        comdirection = rand(3)

        puts "ホイ！"
        puts "--------"
        puts "あなた：#{direction_text(direction)}"
        puts "相手：#{direction_text(comdirection)}"
        puts "--------"

        if direction_text(direction) == direction_text(comdirection)
            puts "#{winner}の勝ちです！"
            break
        else
            puts "じゃんけん・・・"
            next
        end
    else
        break
    end
end #ループ終了

puts "じゃんけんプログラムを終了します。"