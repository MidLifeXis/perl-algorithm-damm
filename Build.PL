use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
    module_name             => 'Algorithm::Damm',
    auto_configure_requires => 1,
    prereqs => {
        test => {
            requires => {
                'Test::More' => 0,
            },
        },
    },
    create_makefile_pl      => 'small',
    create_readme           => 1,
    dist_author             => 'Brian T. Wightman <MidLifeXis@wightmanfam.org>',
    license                 => [ 'perl' ],
    resources               => {
        repository => {
            url  => 'git://github.com/MidLifeXis/perl-algorithm-damm',
            web  => 'https://github.com/MidLifeXis/perl-algorithm-damm',
            type => 'git',
        },
    },
    );

$build->create_build_script;
