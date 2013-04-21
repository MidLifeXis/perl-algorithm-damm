package Algorithm::CheckDigits::Plugin::Damm::Interface;

use strict;
use warnings;

use vars qw($VERSION);
$VERSION = '1.002';

use Algorithm::Damm;

sub new {
    my $class = shift;
    my $self = bless( {}, $class );
    $self->{ obj } = Algorithm::Damm->new;
    return $self;
}

sub is_valid {
    my ( $self, $n ) = @_;

    return $self->{ obj }->is_valid( $n );
}

sub complete {
    my ( $self, $n ) = @_;

    return $n . $self->{ obj }->check_digit( $n );
}

sub checkdigit {
    my ( $self, $n ) = @_;

    return undef unless $self->is_valid( $n );
    return substr( $n, -1 );
}

sub basenumber {
    my ( $self, $n ) = @_;

    return undef unless $self->is_valid( $n );
    return substr( $n, 0, length( $n ) - 1 );
}
    
1;
