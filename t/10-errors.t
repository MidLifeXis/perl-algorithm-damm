use strict;
use warnings;

use Test::More;

use Algorithm::Damm qw/is_valid check_digit/;

my $tests;

plan tests => $tests;

my @check_digit_errors;
BEGIN {
    @check_digit_errors = (
        '',
        undef,
        'a',
        '123a',
        );

    $tests += @check_digit_errors;
}
is( check_digit( $_ ), undef, "check_digit( $_ ) => undef" )
     for @check_digit_errors;

my @is_valid_errors;
BEGIN {
    @is_valid_errors = (
        '',
        undef,
        'a',
        'aa',
        '1',
        '123a',
        );

    $tests += @is_valid_errors;
}
is( is_valid( $_ ), undef, "is_valid( $_ ) => undef" )
     for @is_valid_errors;
