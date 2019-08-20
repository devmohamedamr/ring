/*
	Application 	: Ring Lessons
	Author		: Mahmoud Fayed
	Date		: 2017.12.15
*/

load "openssllib.ring"

cStr = read(exefilename())

see "Size    : " + len(cStr) 		+ nl + 
    "Size(KB): " + (len(cStr)/1024) 	+ nl +
    "md5     : " + md5(cStr) 		+ nl +
    "sha1    : " + sha1(cStr) 		+ nl +
    "sha256  : " + sha256(cStr) 	+ nl +
    "sha224  : " + sha224(cStr) 	+ nl +
    "sha384  : " + sha384(cStr) 	+ nl +
    "sha512  : " + sha512(cStr) 	+ nl
