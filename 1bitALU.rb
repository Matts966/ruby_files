def ls_and(i)
  r = false
  r = i["x"] & i["y"]
  return r
end

def ls_or(i)
  r = false
  r = i["x"] | i["y"]
  return r
end

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

def decoder(i)
  r = {"o0" => false, "o1" => false, "o2" => false, "o3" => false}
  r["o0"] = i["x"] & i["y"]
  r["o1"] = i["x"] & !i["y"]
  r["o2"] = !i["x"] & i["y"]
  r["o3"] = !i["x"] & !i["y"]
  return r
end

def ALU(i)
  aAnd = {"o" => false, "cout" => i["cin"]}
  oOr = {"o" => false, "cout" => i["cin"]}
  aAdd = {"o" => false, "cout" => i["cin"]}
  oOp = {"o0" => false, "o1" => false, "o2" => false, "o3" => false}
  r = {"o" => false, "cout" => false}
  aAnd["o"] = ls_and({"x" => i["a"], "y" => i["b"]})
  oOr["o"] = ls_or({"x" => i["a"], "y" => i["b"]})
  aAdd = fulladder({"x" => i["a"], "y" => i["b"], "z" => i["cin"]})
  oOp = decoder({"x" => i["op0"], "y" => i["op1"]})
  r["o"] = oOp["o3"] & aAnd["o"] | oOp["o2"] & oOr["o"] | oOp["o1"] & aAdd["o"]
  r["cout"] = oOp["o3"] & aAnd["cout"] | oOp["o2"] & oOr["cout"] | oOp["op1"] & aAdd["cout"]
  return r
end

begin
print ("=====Testing ALU===== \n")

input = {"a" => true, "b" => false, "cin" => true, "op0" => false, "op1" => true}
output = {"o" => false, "cout" => false}

output = ALU(input)

print("ALU input: ", input, "\n")
print("ALU output: ", output, "\n")
end