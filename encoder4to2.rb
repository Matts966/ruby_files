def encoder(i)
  r = {"o0" => false, "o1" => false}
  r["o0"] = (i["i0"] & !i["i1"] & !i["i2"] & !i["i3"]) |\
            (!i["i0"] & i["i1"] & !i["i2"] & !i["i3"])
  r["o1"] = (!i["i0"] & !i["i1"] & i["i2"] & !i["i3"]) |\
            (i["i0"] & !i["i1"] & !i["i2"] & !i["i3"])
  return r
end

begin
print ("=====Testing encoder===== \n")

input = {"i0" => true, "i1" => false, "i2" => false, "i3" => false}
output = {"o0" => false, "o1" => false}

output = encoder(input)

print("encoder input: ", input, "\n")
print("encoder output: ", output, "\n")

end