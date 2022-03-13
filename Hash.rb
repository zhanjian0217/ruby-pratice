# 使用 Hash 類別
  # a = Hash.new
  # b = {}


profile = { name: 'An', age: 18 }


p profile.keys    # 印出 [:name, :age]
p profile.values  # 印出 ["An", 18]

p profile["name"]   # nil
p profile[:name]    # 'An'
p profile[:age]
