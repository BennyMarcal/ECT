import PyKCS11
import binascii
from cryptography import x509
from cryptography.hazmat.primitives import serialization
from cryptography.hazmat.backends import default_backend as db
from cryptography.hazmat.primitives.asymmetric.padding import PKCS1v15
from cryptography.hazmat.primitives.hashes import SHA1, Hash

lib = '/usr/lib/x86_64-linux-gnu/pkcs11/opensc-pkcs11.so'

pkcs11 = PyKCS11.PyKCS11Lib()
pkcs11.load(lib)
slots = pkcs11.getSlotList(tokenPresent=True)

print(slots)

for slot in slots:
    print(pkcs11.getTokenInfo(slot))

    all_attr = list(PyKCS11.CKA.keys())

    #Filter attributes
    all_attributes = [e for e in all_attr if isinstance(e, int)]

    session = pkcs11.openSession(slot)
    # session.login('1111') # DANGER!!! USE YOUR PINCODE!!

    #### Search for objects and extract reference to private key and certificate

    for obj in session.findObjects():
        attr = session.getAttributeValue(obj, all_attributes)

        attrDict = dict(list(zip(all_attributes, attr)))
        print("Type:", PyKCS11.CKO[attrDict[PyKCS11.CKA_CLASS]], "\tLabel:", attrDict[PyKCS11.CKA_LABEL])



    