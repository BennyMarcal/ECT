f = open("C:/Users/benny/Desktop/ECT/Labi/Guiao 12/p20/file.txt","r")

nline = 0
nWord = 0
nChar = 0

for line in f:
    if line =="":
        break
    
    nline += 1

    s = line.split()

    for word in s:
        nWord += 1
        nChar += len(word)

print("O ficheiro tem %d linhas, %d palavras e %d caracteres"%(nline,nWord,nChar))
