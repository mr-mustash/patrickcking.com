---
title: "GPG Key Transition Statement"
date: 2021-02-23T09:50:19-08:00
tags:
- gpg
---

I have created a new [GPG Key 0x944E36F397047609](/228DFBBBA5E971D5C3C631BE944E36F397047609.asc) and will be transitioning away from my old key. I have also learned that ProtonMail (my provider) requires a primary key for management. As this is not something I am willing to give them, there will be a mismatch between my keys for email and everything else. You can find my new ProtonMail public key [here](/D7CC62B01351B2DE7998B63AB979E239DBC680A4.asc).

If you have signed my previous key I would appreciate signatures on my new key as well. I have included a signed transition statement below which can also be found at [www.patrickcking.com/key-transition-2021-02-23.txt](/key-transition-2021-02-23.txt) if you prefer to download it.

```
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

OpenPGP Key Transition Statement for Patrick King

I have created a new OpenPGP key and will be transitioning away from
my old key.  The old key has not been compromised and will continue to
be valid for some time, but I prefer all future correspondence to be
encrypted to the new key, and will be making signatures with the new
key going forward.

The old key, which I am transitioning away from, is:

pub   rsa4096/0x2A590EC935F55DB1 2014-04-11 [SCEA] [expires: 2024-04-08]
      Key fingerprint = 269E 87A8 B0E4 EA16 ABF6  1101 2A59 0EC9 35F5 5DB1

The new key, to which I am transitioning, is:

pub   rsa4096/0x944E36F397047609 2021-02-23 [C]
      Key fingerprint = 228D FBBB A5E9 71D5 C3C6  31BE 944E 36F3 9704 7609

The entire key may be downloaded from: https://www.patrickcking.com/228DFBBBA5E971D5C3C631BE944E36F397047609.asc

To fetch the full new key from a public key server using GnuPG, run:

  gpg --keyserver keys.openpgp.org --recv-key 228DFBBBA5E971D5C3C631BE944E36F397047609

If you already know my old key, you can now verify that the new key is
signed by the old one:

  gpg --check-sigs 228DFBBBA5E971D5C3C631BE944E36F397047609

If you are satisfied that you've got the right key, and the User IDs
match what you expect, I would appreciate it if you would sign my key:

  gpg --sign-key 228DFBBBA5E971D5C3C631BE944E36F397047609

You can upload your signatures to a public keyserver directly:

  gpg --keyserver keys.openpgp.org --send-key 228DFBBBA5E971D5C3C631BE944E36F397047609

Or email patrick@patrickcking.com (possibly encrypted) the output from:

  gpg --armor --export 228DFBBBA5E971D5C3C631BE944E36F397047609

If you'd like any further verification or have any questions about the
transition please contact me directly.

To verify the integrity of this statement:

  wget -q -O- https://www.patrickcking.com/key-transition-2021-02-23.txt|gpg --verify

- -- Patrick
PS: Thank you Simon Josefsson for the excelent guide on how to write this
statement https://blog.josefsson.org/2014/06/23/openpgp-key-transition-statement
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJp6HqLDk6har9hEBKlkOyTX1XbEFAmA1TG8ACgkQKlkOyTX1
XbGBLBAAldWyODzccV+VINKCzgCNXzgyrtOkXNIcDGQZ709ifQqEA/VSFpIKH59/
awq+h4c0ZCc8Y4qQ3/f+v2yCiCfx6CaUjmNx4y6sieWMOdUuRLvVay2LdXty9n9P
IZqNHRXN/1s2pBxuY2sJMiLWGA3i5RJnV0XpRUhuTUZbWldyozG4WHijjCUUe85+
vtmLOR2nQ3zjNlqWN+fQy1IZfQwyDqc5W5ihUQ9YA8rdTemazqhj4LxLQ/pm/Rdm
1YzApszd6Gh6/s44Ur+xi66Zr4o7gDS+QZ39un0fDLPIIMNg6XB9ACAiQBCqEtqG
OTwFIYoGcbtPX42lNFHagAYErKJZ5vQBmql2jL0sHa6ZtBbFmmvWW/n3Pa0P8np1
g/UEb+GK7AvvCl4gDCgkkp5PCLxZsdJwzxCAVEZ/UfxpGwM2l/E6KX5S1i01/TNi
1nwzIQhxn5ydfL1UeSL+ENp2DuKOPYm6zxQy2JsCjC+LBid1DXxRoAZnWu01rsNF
5s4e4hPcwpEi+yHrMrkyuoU5d6CzFko4eSzCrj2aCuzzeQbXI8vtnHOndsQaBxZN
XzcF7lprR2avMnd8kojtZXsL+ciYwmYcsOJE+J9Rwdq4oLh/k4yBn/5tP7f88p9A
oj+gmX58j6LgeTY0Gk/w0pjfuqc6uZXfGhyeD55kKt6bPdzgN+eJAjMEAQEKAB0W
IQQkeJc0PYVEgvQXK2t7zoE5Cj/kYwUCYDVMbwAKCRB7zoE5Cj/kY40wD/97RGfj
QaDjbsqSOWnpnOibvhlL9eIrfOtywEN6MM65w9vAVKOBbHJDz6Lr+juNS9FMyTtr
Hr4DRXipcn3GZpyvYNvxBUhVzXfs5Uk+rRvK22G0WXYgBYAM491yHzJy/WI/v0Ac
nUBi9FaIOl2GFDxhufNgiBHIQ56pob8RhSzPjbKr19Vd6Z+/H2fbHkFYdQ2WibuA
u1UiRljaP1kv1Nf/KBkyLjdo1GcxngopqcvN938E0EUa6lxQ32xxxiO/eBPBQCKi
VJAZ5LvfIsKiR8fAQJephYdCWeFU+tD14FM09VHQM6t4Uw+2vaOnjUC0oFXvxfuL
Xckg8FW9HSvxAE11KhgwiGYnW3Y9PDPKbCruwFtzdVDMQhfHTHwL0Rwkzob0ZpCq
ieeIH5aeo7phJrmqOP0/VYPLAQUx6JZlw1QCReLtfp37yVgdYB4V7NeGWnBF/CPz
DGCI9fF0jXyuqghEmIwBgyCb9bq1iWreYLAajD+bSbXGMgKwxkXqPDTcCXqpTEa9
GovK7J7apH0Zs4Awvbc2BlnO7VyECE4beo2eTWi26RXWj+KuldfASdWQuHjnCEhL
WYTUz+3LdMJtjNQ1s3V/l1loyFIkwiYKf3In/LhWlqZYN++9x7mt773/l0zftyiR
YWX7063iwAbmNlfjUGKT3vLPsjb4+Df5MRC3ug==
=Zfxv
-----END PGP SIGNATURE-----
```


---
This page's [markdown](https://raw.githubusercontent.com/mr-mustash/patrickcking.com/master/hugo/content/blog/20210223-gpg-transition-statement.md) can be verified with [this signature](/signatures/markdown/blog/20210223-gpg-transition-statement.md.sig) and it's HTML can be verified with [this signature](/signatures/html/{{< relref "blog/20210223-gpg-transition-statement.md" >}}/index.html.sig).
