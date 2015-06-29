class DisguisedFizzBuzz
  def self.cracklepop?(num, mod1, mod2)
    case
      when num % (mod1 * mod2)  == 0 then "CracklePop"
      when num %  mod1          == 0 then "Crackle"
      when num %  mod2          == 0 then "Pop"
      else num
    end
  end

  def self.cracklepop_to(limit, mod1, mod2)
    1.upto(limit).map do |num|
     print cracklepop?(num, mod1, mod2)
    end
  end
end

DisguisedFizzBuzz.cracklepop_to(30, 3, 5)
