ldid
====

ldid port to nix OS

Description
===========

This tool is described here http://iphonedevwiki.net/index.php/Ldid

Motivation
==========

Code seems to be adapted for Mac OS only. 

1. make.sh uses -arch to define machine, where -m is needed on *nix
2. compiling mixed C++ and C code doesn't allow (as far as I dig) old-style functions definition, as lookup2.c uses. by now code was directly inserted in ldid.cpp

Contribute
==========

Send a pull request for whatever fix, enhacement, or new feature. I will try to stay in sync with original project and propagate the functionality. If this port was absorbed by original, is purpose 
