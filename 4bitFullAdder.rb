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

def fulladder4bit(i)
  r = {"o" => [false, false, false, false], "c" => false}
  r["o"][0] = fulladder({"x" => i["x"][0], "y" => i["y"][0], "z" => false})["s"]
  c0 = fulladder({"x" => i["x"][0], "y" => i["y"][0], "z" => false})["c"]
  r["o"][1] = fulladder({"x" => i["x"][1], "y" => i["y"][1], "z" => c0})["s"]
  c1 = fulladder({"x" => i["x"][1], "y" => i["y"][1], "z" => c0})["c"]
  r["o"][2] = fulladder({"x" => i["x"][2], "y" => i["y"][2], "z" => c1})["s"]
  c2 = fulladder({"x" => i["x"][2], "y" => i["y"][2], "z" => c1})["c"]
  r["o"][3] = fulladder({"x" => i["x"][3], "y" => i["y"][3], "z" => c2})["s"]
  c3 = fulladder({"x" => i["x"][3], "y" => i["y"][3], "z" => c2})["c"]
  r["c"] = c3
  return r
end


begin
print ("=====Testing 4bit Full Adder===== \n")

input = {"x" => [true, true, true, true], "y" => [true, true, true, true]}
output = {"o" => [false, false, false, false], "c" => false}

output = fulladder4bit(input)

print("4bit full adder input: ", input, "\n")
print("4bit full adder output: ", output, "\n")
end