def decoder(i)
  r = {"o0" => false, "o1" => false, "o2" => false, "o3" => false}
  r["o0"] = i["x"] & i["y"]
  r["o1"] = i["x"] & !i["y"]
  r["o2"] = !i["x"] & i["y"]
  r["o3"] = !i["x"] & !i["y"]
  return r
end

begin
print ("=====Testing decoder===== \n")

input = {"x" => true, "y" => true}
output = {"o0" => false, "o1" => false, "o2" => false, "o3" => false}

output = decoder(input)

print("decoder input: ", input, "\n")
print("decoder output: ", output, "\n")

end