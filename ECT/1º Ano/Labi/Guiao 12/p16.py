s = input("para inverter? ->")

inv = ""

for i in s:
    inv = i + inv

print("(%s) -> (%s)"%(s,inv))
