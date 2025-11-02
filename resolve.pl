#!/usr/bin/env perl
# resolve.pl
# Thanks to ysth https://stackoverflow.com/a/24575955

# This work is dedicated to the public domain under CC0 1.0 Universal:
# http://creativecommons.org/publicdomain/zero/1.0/
# 
# To the extent possible under law, Steven Ford has waived all copyright
# and related or neighboring rights to this work. In other words, you can 
# use this code for any purpose without any restrictions.
# This work is published from: United States.
# Project home: https://github.com/fordsfords/resolve.pl

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
