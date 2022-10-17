f = open("C:/Users/benny/Desktop/ECT/Labi/Guiao 12/p21/file2.txt","r")

rev = ""
nLine = ""

for line in f:
    if line =="":
        break

    s = line.split()
    nLine = ""
    for word in s:
        rev = ""
        for c in word:
            rev = c + rev
        nLine = nLine + ' ' + rev
        
    print(nLine + "\n")
