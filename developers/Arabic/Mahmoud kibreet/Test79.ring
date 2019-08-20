/*
          Application : Ring Lessons
          Author      : Mahmoud Kibreet
          Date        : 2018.01.29
*/

load "openssllib.ring"

See "Enter a string : " give cStr

	cKey=""         	# 16 bytes
	for x = 1 to 15
		cKey += char(x) 
	next


	cIV = ""       	       # 8 bytes
	for x = 1 to 8 
		cIV += char(x) 
	next


cStr = Encrypt(cStr,cKey,cIV)
See "Cipher Text    : " + cStr + nl +
    "Plain Text     : " + Decrypt(cStr,cKey,cIV) + nl
