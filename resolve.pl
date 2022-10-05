#!/usr/bin/env perl
# resolve.pl
#
# This code and its documentation is Copyright 2011-2021 Steven Ford
# and licensed "public domain" style under Creative Commons "CC0":
#   http://creativecommons.org/publicdomain/zero/1.0/
# To the extent possible under law, the contributors to this project have
# waived all copyright and related or neighboring rights to this work.
# In other words, you can use this code for any purpose without any
# restrictions.  This work is published from: United States.  The project home
# is https://github.com/fordsfords/resolve.pl
#
# Thanks to ysth https://stackoverflow.com/a/24575955

use strict;
use warnings;
use Socket;

my $err;

for (@ARGV) {
  my @addrs;
  ($err, @addrs) = Socket::getaddrinfo($_, 0, {'protocol' => Socket::IPPROTO_TCP});
  die $err if $err;

  for my $addr (@addrs) {
    my $host;
    ($err, $host) = Socket::getnameinfo($addr->{addr}, Socket::NI_NUMERICHOST);
    warn $err if $err;
    print "$host ";
  }
  print "\n";
}

# All done.
exit(0);
