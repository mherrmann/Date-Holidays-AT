use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'Date::Holidays::CH',
    license           => 'perl',
    dist_author       => 'Michael Herrmann <michael@herrmann.io>',
    dist_version_from => 'lib/Date/Holidays/CH.pm',
    build_requires    => {
                  'Date::Calc' => '5.0',
                  'Test::More' => 0,
                  'version'    => 0,
                },
    configure_requires => { 'Module::Build' => 0.36 },
    add_to_cleanup => ['Date-Holidays-CH-*'],
    create_makefile_pl => 'traditional',
    meta_merge => {
        resources => {
            repository => 'git://github.com/mherrmann/Date-Holidays-CH.git',
            homepage   => 'http://github.com/mherrmann/Date-Holidays-CH/',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Date-Holidays-CH',
        }
    },
);

$builder->create_build_script();
