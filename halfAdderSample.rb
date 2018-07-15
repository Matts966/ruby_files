def ls_halfadder(i)
  r = {"s" => false, "c" => false}
  r["s"] = ((!i["x"]) &   i["y"] ) |\
           (  i["x"]  & (!i["y"]))
  r["c"] =    i["x"]  &   i["y"]
  return r
end

begin
print ("=====Testing Half Adder===== \n")

input = {"x" => true, "y" => true}
output = {"s" => false, "c" => false}

output = ls_halfadder(input)

print("half adder input: ", input, "\n")
print("half adder output: ", output, "\n")
end