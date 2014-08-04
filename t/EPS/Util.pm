package
    t::EPS::Util;
use strict;
use warnings;

sub new {
    my ($class, $string) = @_;
    bless {string => $string}, $class;
}

sub header {
    my ($class, $key) = @_;
    my ($rtn) = $class->{string} =~ /(^\%\!PS\-Adobe\-.*\n\%\%EndComments\n)/ms;
    return defined $key ? [$rtn =~ /^\%\%$key: (.+)$/m]->[0] : $rtn;
}

sub prolog {
    my ($class) = @_;
    my ($rtn) = $class->{string} =~ /(^\%\%BeginProlog.*\%\%EndProlog\n)/ms;
    return $rtn;
}

sub body {
    my ($class) = @_;
    my ($data) = $class->{string} =~ /\%\%EndProlog\n(.*)\%\%EOF/ms;
    my @lines = split /\n/, $data;
    return @lines;
}

1;
