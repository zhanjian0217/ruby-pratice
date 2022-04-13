a1 = "4D9709D699CA40EE"
a2 = "5A4FEF83140C4E9E"
b1 = "BC74301945134CB4"
b2 = "961F67F8FCA44AB9"

def string_xor(str1: , str2: )
  str1.chars.zip(str2.chars).map do |x, y|
    (x.to_i(16) ^ y.to_i(16)).to_s(16).upcase
  end.join
end

def hash_id(qq:, ww:, ee:, rr:) 
  aa = string_xor(str1:qq , str2:ww )
  bb = string_xor(str1: ee, str2:rr )

  "#{aa}#{bb}"
end

# p hash_id(a1, a2, b1, b2)
p hash_id(qq:a1, ww:a2, ee:b1 , rr:b2) 
