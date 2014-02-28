# NAME

Vector::QRCode::EPS - A generator class for vector data of QRCode

# SYNOPSIS

    use Vector::QRCode::EPS;
    

    my $ps = Vector::QRCode::EPS->generate(
        text   => 'Hello, world!',
        colour => [255, 0, 0], 
        size   => 6,
        unit   => 'cm',
    );
    $ps->output('qrcode.ps');



# DESCRIPTION

Vector::QRCode::EPS is a generator that returns a QRCode data as [PostScript::Simple](http://search.cpan.org/perldoc?PostScript::Simple) object.

# REQUIREMENT

You have to install [libqrencode](https://github.com/fukuchi/libqrencode) into your host before installing this module.

# METHODS

## generate

Returns a [PostScript::Simple](http://search.cpan.org/perldoc?PostScript::Simple) object that contains a vector data of QRCode.

    $ps_obj = Vector::QRCode::EPS->generate(%options);

Options are followings.

- text

    Required. Text that will be implemented into QRCode.

- size

    Optional. Multiple of unit. Default is 10.

- unit

    Optional. Unit from 'mm', 'cm', 'in', 'pt', and 'bp'. Default is 'cm'.

    Please see more datail for [CONSTRUCTOR Paragraph of the PostScript::Simple documentation](http://search.cpan.org/perldoc?PostScript::Simple\#CONSTRUCTOR).

- colour

    Optional. RGB colour specification in arrayref. Default is \[10, 10, 10\].

# LICENSE

Copyright (C) ytnobody.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

ytnobody <ytnobody@gmail.com>

# SEE ALSO

[libqrencode](https://github.com/fukuchi/libqrencode)

[PostScript::Simple](http://search.cpan.org/perldoc?PostScript::Simple)

[Text::QRCode](http://search.cpan.org/perldoc?Text::QRCode)
