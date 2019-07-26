module DropStyle
  def self.upcase_sound(sound)
    sound.upcase
  end

  def self.star_sound(sound)
    "*#{sound}*"
  end

  def self.get_style(sound, exponent)
    case exponent
    when 1
      sound
    when 2
      self.upcase_sound(sound)
    when 3
      self.star_sound(self.upcase_sound(sound))
    else
      # If we would want to sort the drops by another order, we could do it here
      "#{self.get_style(sound, exponent - 3)}, #{self.get_style(sound, 3)}"
    end
  end
end
