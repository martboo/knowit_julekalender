#! /usr/bin/perl

# I dagens luke skal vi på en magisk reise i den lille (og den ekstremt store) gangetabellen.
#
# Den lille gangetabellen ser slik ut:
# 1  2  3  4  5  6  7  8  9
# 2  4  6  8 10 12 14 16 18
# 3  6  9 12 15 18 21 24 27
# 4  8 12 16 20 24 28 32 36
# 5 10 15 20 25 30 35 40 45
# 6 12 18 24 30 36 42 48 54
# 7 14 21 28 35 42 49 56 63
# 8 16 24 32 40 48 56 64 72
# 9 18 27 36 45 54 63 72 81
#
# Denne 9 x 9 tabellen inneholder 36 unike produkt, og de er som følger: 1, 2,
# 3, 4, 5, 6, 7, 8, 9, 10, 12, 14, 15, 16, 18, 20, 21, 24, 25, 27, 28, 30, 32,
# 35, 36, 40, 42, 45, 48, 49, 54, 56, 63, 64, 72 og 81.
#
# Hvor mange unike produkt finnes det i en 8000 x 8000 tabell?

use strict;
use warnings;

my %hash = ();

my $number = 8000;

for (my $i=0; $i <= $number; $i++) { for (my $j=0; $j <= $number; $j++) {

        my $result = $i*$j; if ($result != 0) { $hash{ $result } = $result; } }}

print "size of hash:  " . keys( %hash ) . ".\n";

# > perl luke6.pl
# size of hash:  14509549.
