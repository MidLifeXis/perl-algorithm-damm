package Algorithm::CheckDigits::Plugin::Damm;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = '1.002';

use Algorithm::CheckDigits();

Algorithm::CheckDigits::plug_in(
    'damm' => 'Algorithm::CheckDigits::Plugin::Damm::Interface',
    );

1;
