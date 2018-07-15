def fulladder(i)
  r = {"s" => false, "c" => false}
  r["s"] = (i["x"] & i["y"] & i["z"]) |\
           (i["x"] & !i["y"] & !i["z"]) |\
           (!i["x"] & !i["y"] & i["z"]) |\
           (!i["x"] & i["y"] & !i["z"])
  r["c"] = (i["x"] & i["y"] & i["z"]) |\
           (!i["x"] & i["y"] & i["z"]) |\
           (i["x"] & !i["y"] & i["z"]) |\
           (i["x"] & i["y"] & !i["z"])
  return r
end

begin
print ("=====Testing Full Adder===== \n")

input = {"x" => true, "y" => false, "z" => true}
output = {"s" => false, "c" => false}

output = fulladder(input)

print("full adder input: ", input, "\n")
print("full adder output: ", output, "\n")
end