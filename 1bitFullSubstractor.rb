def fullsubstracor(i)
  r = {"d" => false, "b_out" => false}
  r["d"] = (i["x"] & i["y"] & i["b_in"]) |\
           (!i["x"] & !i["y"] & i["b_in"]) |\
           (!i["x"] & i["y"] & !i["b_in"]) |\
           (i["x"] & !i["y"] & !i["b_in"])
  r["b_out"] = (i["x"] & i["y"] & i["b_in"]) |\
           (!i["x"] & !i["y"] & i["b_in"]) |\
           (!i["x"] & i["y"] & !i["b_in"]) |\
           (!i["x"] & i["y"] & i["b_in"])
  return r
end

begin
print ("=====Testing Full Substractor===== \n")

input = {"x" => true, "y" => false, "b_in" => true}
output = {"d" => false, "b_out" => false}

output = fullsubstracor(input)

print("full substractor input: ", input, "\n")
print("full substractor output: ", output, "\n")
end