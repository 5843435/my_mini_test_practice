require "mini_test_practice/version"

module MiniTestPractice
 class Main

#整数を入力として受け取り，値が奇数ならば真を返す
   def odd?(n)
     if n % 2 == 1
       return true
     else
       return false
     end
   end

#引数が0以外ではじまる4桁の数字であり，なおかつ，値が偶数ならば 真を返す
   def check_number?(n)
     n.is_a?(Integer) && (n/10).to_s.length == 3 && n % 2 == 0
   end

#文字列を受け取り，その長さが3文字以上，8文字以下であれば 真を返す
   def enough_length?(n)
     n.to_s.length >= 3 && n.to_s.length <= 8
   end

#引数として割る数と割られる数を取り，割り算をした結果を返す． ただし，0で割り算をしたら例外を発生する
   def divide(n,m)
     l = m / n
     return l
   end

#引数に数値を1つとる．3の倍数の時は”Fizz”を返す． 5の倍数の時は”Buzz”を返す．3と5の公倍数のときは”FizzBuzz”を返す．
   def fizz_buzz(n)
     if n % 15 == 0
        return "FizzBuzz"
     elsif
        n % 5 == 0
        return "Buzz"
     elsif
        n % 3 == 0
        return "Fizz"
     else
        return false
     end
   end

#標準出力に「Hello」と表示する
   def hello
     p "Hello"
   end

 end
end