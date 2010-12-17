package JSON::PP::Compat;
use 5.005;
$JSON::PP::Compat::VERSION = '2.00';
use strict;

my $helper =  $] lt '5.006' ? 'JSON::PP5005'
           :  $] lt '5.008' ? 'JSON::PP56'
           :  q{}
           ;

if ( $helper ) {
  eval qq| require $helper |;
  die $@ if $@;
}

1;
__END__

=pod

=head1 NAME

JSON::PP::Comapt - Helper module in using JSON::PP in old perls

=head1 SYNOPSIS

Do not use this directly! See L<JSON::PP>

=head1 DESCRIPTION

C<JSON::PP> calls internally.

=head1 AUTHOR

Makamaka Hannyaharamitu, E<lt>makamaka[at]cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2007-2010 by Makamaka Hannyaharamitu

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut

