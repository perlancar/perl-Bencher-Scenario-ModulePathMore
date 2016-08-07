package Bencher::Scenario::ModulePathMore;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark Module::Path::More vs Module::Path',
    participants => [
        {
            name => 'MP',
            fcall_template => 'Module::Path::module_path(<module>)',
        },
        {
            name => 'MPM',
            fcall_template => 'Module::Path::More::module_path(module => <module>)',
        },
        {
            name => 'MPM(abs=1)',
            fcall_template => 'Module::Path::More::module_path(module => <module>, abs=>1)',
        },
    ],
    datasets => [
        {args=>{module=>'strict'}},
        {args=>{module=>'Foo::Bar'}},
    ],
};

1;
# ABSTRACT:
