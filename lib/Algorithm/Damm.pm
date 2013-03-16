package Algorithm::Damm;

use strict;
use Exporter;

use vars qw/$VERSION @ISA @EXPORT @EXPORT_OK $ERROR/;

@ISA       = qw/Exporter/;
@EXPORT    = qw//;
@EXPORT_OK = qw/check_digit is_valid/;

$VERSION = '0.000';

=pod

=head1 NAME

Algorithm::Damm - Calculate the Damm error correction check digit.

=head1 SYNOPSIS

  use Algorithm::Damm qw/check_digit is_valid/;

  $c = check_digit("43881234567");
  print "It works\n" if is_valid("43881234567$c");

=head1 DESCRIPTION

This module implements the Damm algorithm for calculating a check
digit.

You can find information about the algorithm by searching the web for
"Damm ECC".

=head1 FUNCTIONS

=over 4

=cut

=item is_valid CHECKSUMMED_NUM

This function returns 1 if the final character of CHECKSUMMED_NUM is
the correct checksum for the rest of the number, 0 if not, and undef
if CHECKSUMMED_NUM contains an invalid character or does not contain
at least two digits (one for the number, and one for the checksum).

This function is equivalent to

  substr $N,length($N)-1 eq check_digit(substr $N,0,length($N)-1)

=cut

sub is_valid {
    my $N = shift;
}

=item check_digit NUM

This function returns the checksum of the given number.  It will
return undef if it is not able to calculate the checksum.

=cut

sub check_digit {
    my $N = shift;
}

=back

=cut

1;

__END__

=head1 SEE ALSO

=over 4

=item Algorithm::LUHN

Based on L<Algorithm::LUHN> by Tim Ayers.

=item Wikipedia

L<http://en.wikipedia.org/wiki/Damm_algorithm> - Article explaining
the Damm error correction algorithm.

=back

=head1 REPOSITORY

You can find the source at
L<https://www.github.org/MidLifeXis/perl-algorithm-damm>.

=head1 BUGS

None known at this time, but feel free to submit them to RT or the
issue tracker for this source at GitHub.

=head1 AUTHOR

This module was written by Brian T. Wightman
(http://search.cpan.org/search?author=MLX) based on the module
Algorithm::LUHN by Tim Ayers.

=head1 COPYRIGHT

Copyright (c) 2013 Brian T. Wightman. All rights reserved.

=head1 LICENSE

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
