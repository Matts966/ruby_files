def demultiplexer(i)
  r = {"o0" => false, "o1" => false}
  r["o0"] = (!i["x"] & i["s"]) |\
            (i["y"] & !i["s"])
  r["o1"] = (i["x"] & i["s"]) |\
            (!i["y"] & !i["s"])
  return r
end

begin
print ("=====Testing demultiplexer===== \n")

input = {"x" => true, "s" => false}
output = {"o0" => false, "o1" => false}

output = demultiplexer(input)

print("demultiplexer input: ", input, "\n")
print("demultiplexer output: ", output, "\n")
end