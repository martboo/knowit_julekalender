#! /usr/bin/perl

use strict; use warnings;

 my %hash = ();

my $number = 8000;

for (my $i=0; $i <= $number; $i++) { for (my $j=0; $j <= $number; $j++) {

    my $result = $i*$j; if ($result != 0) { $hash{ $result } = $result; } }}

 print "size of hash:  " . keys( %hash ) . ".\n";
