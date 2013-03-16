use strict;
use warnings;

use Test::More tests => 2;

my $module = 'Algorithm::Damm';

    use_ok( $module );
require_ok( $module );
