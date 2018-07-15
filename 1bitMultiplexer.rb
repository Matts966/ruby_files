def multiplexer(i)
  r = {"o" => false}
  r["o"] = (i["x"] & i["s"]) |\
           (i["y"] & !i["s"])
  return r
end

begin
print ("=====Testing multiplexer===== \n")

input = {"x" => false, "y" => true, "s" => true}
output = {"o" => false}

output = multiplexer(input)

print("multiplexer input: ", input, "\n")
print("multiplexer output: ", output, "\n")
end