#!/usr/bin/env perl
#
# open and print files in the command-line
#

use strict;
use warnings;

sub print_file {
	my $file = shift @_;
	open my $tmpf, $file;
	while( my $line = <$tmpf> ) {
		print $line;
	}
}

sub cat {
	while( my $file = shift @_ ) {
		print_file "$file ";
	}
}

cat @ARGV;
