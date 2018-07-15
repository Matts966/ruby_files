def fraktur(str)
  str.tr('a-zA-Z', '𝔞-𝔷𝕬-𝖅')
end

puts fraktur("I love coffee.") # 𝕴 𝔩𝔬𝔳𝔢 𝔠𝔬𝔣𝔣𝔢𝔢.
