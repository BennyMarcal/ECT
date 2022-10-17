s = input("para inverter? ->")
d = s
inv = ""

while len(s)>0:
    inv = s[0] + inv
    s = s[1:len(s)]

print("(%s) -> (%s)"%(d,inv))
