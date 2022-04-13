# def bmi_calculator(height, weight)
#   begin
#     weight / (height*height)
#   rescue
#     "有問題"
#   end
# end


#p bmi_calculator(0, 80)

def bmi_calculator(height, weight)
  begin
    weight / ( height * height )
  rescue => exception
    "有問題"    
  end
end

p bmi_calculator(0, 80)


