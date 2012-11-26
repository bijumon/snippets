#!/usr/bin/env perl
#
# pop command-line argument stack
#

use strict;
use warnings;

print "@ARGV\n";
my @params = @ARGV;

while ( shift @params) {
	print "@params \n";
}

