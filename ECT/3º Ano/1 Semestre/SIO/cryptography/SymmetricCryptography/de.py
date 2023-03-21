import os
import sys
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives import padding

def main():
    if(len(sys.argv)<4):
        print("Erro burro: python3 de.py input output algorithm (mode)")
        exit(1)
    file_in=sys.argv[1]
    file_out=sys.argv[2]
    cipher=sys.argv[3]
    if( len(sys.argv)>4 ):
        mode=sys.argv[4]
    else:
        mode="CBC"

    f=open(file_in,"rb")
    iv=f.read(16)
    data = f.read()
    #print(data)
    f=open("pass.txt", "rb")
    key = f.read()
    data=decriptar(data,cipher,mode,key,iv)
    print(data)

    f=open(file_out,"wb")
    f.write(data)


def decriptar (data , cipher,mode,key ,iv):
    need = False
    if( cipher=="AES-128"):
        if(mode == "CBC"):
            cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
            need = True
        elif(mode == "ECB"):
            cipher = Cipher(algorithms.AES(key), modes.ECB())
            need = True
        elif(mode == "OFB"):
            cipher = Cipher(algorithms.AES(key), modes.OFB(iv))
        elif(mode == "CFB"):
            cipher = Cipher(algorithms.AES(key), modes.CFB(iv))
        
        decryptor = cipher.decryptor()
        data=decryptor.update(data)+decryptor.finalize()
        if(need):
            data=despaddar(data)
            
    elif(cipher=="ChaCha20"):
        algorithm = algorithms.ChaCha20(key, iv)
        cipher = Cipher(algorithm, mode=None)
        encryptor = cipher.decryptor()
        data=encryptor.update(data)

    return data

def despaddar(data):
    padder=padding.PKCS7(128).unpadder()
    data=padder.update(data) + padder.finalize()
    return data

if __name__ == "__main__":
    main()