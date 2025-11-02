# resolve.pl
Perl-based resolve host name to IP(s).

This Perl program uses Socket::getnameinfo to resolve a host name.
This follows the rules in /etc/resolv.conf so that entries in
/etc/hosts will take priority over DNS.

Thanks to ysth https://stackoverflow.com/a/24575955 for saving me
a bunch of time!


## Example

````
./resolve.pl yahoo.com
98.137.11.164 74.6.143.25 74.6.143.26 74.6.231.20 74.6.231.21 98.137.11.163 2001:4998:24:120d::1:0 2001:4998:24:120d::1:1 2001:4998:44:3507::8000 2001:4998:44:3507::8001 2001:4998:124:1507::f000 2001:4998:124:1507::f001
````

Yahoo.com resolves to multiple IP addresses of both IPv4 and IPv6.


## License

I want there to be NO barriers to using this code, so I am releasing it to the public domain.  But "public domain" does not have an internationally agreed upon definition, so I use CC0:

This work is dedicated to the public domain under CC0 1.0 Universal:
http://creativecommons.org/publicdomain/zero/1.0/

To the extent possible under law, Steven Ford has waived all copyright
and related or neighboring rights to this work. In other words, you can 
use this code for any purpose without any restrictions.
This work is published from: United States.
Project home: https://github.com/fordsfords/resolve.pl
