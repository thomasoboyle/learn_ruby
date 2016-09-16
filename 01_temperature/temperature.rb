def ftoc(tempature)
  conversion = (tempature - 32).to_f
  celsius = conversion * (5.0/9.0)
end

def ctof(tempature)
  conversion = tempature.to_f * (9.0/5.0)
  fahrenheit = conversion + 32
end
