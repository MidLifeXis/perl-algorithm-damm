use strict;
use warnings;

use Test::More;

use Algorithm::Damm qw/is_valid check_digit/;

my $tests;

plan tests => $tests * 1;

my %good;
BEGIN {
    %good = (
        572  => 4,
        5724 => 0,
        576  => 2,
        5762 => 0,
        );
    $tests += %good;
}
is( check_digit( $_ ), $good{$_}, "check_digit( $_ ) => $good{$_}" )
    for keys %good;
