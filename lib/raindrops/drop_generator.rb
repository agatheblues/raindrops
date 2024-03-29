require 'prime'
require_relative 'drop_style'

module DropGenerator
  $default_sound = "blob"
  $sounds = {
    2 => "pling",
    3 => "plang",
    5 => "plong",
    17 => "tshäng",
  }

  def self.get_prime_division(number)
    number.prime_division
  end

  def self.get_sound(prime_factor)
    $sounds[prime_factor]
  end

  def self.has_eligible_prime?(primes)
    eligible_primes = $sounds.keys
    has_eligible_prime = false

    # Check if the prime contains at least one eligible prime
    primes.each do |prime|
      if eligible_primes.include?(prime[0])
        has_eligible_prime = true
        break
      end
    end

    has_eligible_prime
  end

  # For each prime factor in the list
  # If there is no corresponding sound for that prime, skip.
  # Else, add the styled drop sound to the list
  def self.get_drop_list(primes)
    drops = []
    primes.each do |prime|
      prime_factor, exponent = prime
      sound = self.get_sound(prime_factor)
      drops << DropStyle.get_style(sound, exponent) if !sound.nil? 
    end
    drops
  end

  def self.convert(number)
    primes = self.get_prime_division(number)

    # Case when no primes at all
    # Case when no primes belong to the sound prime list
    if primes.empty? || !self.has_eligible_prime?(primes)
      return $default_sound
    end

    drops = self.get_drop_list(primes)
    
    drops.join(', ')
  end
end