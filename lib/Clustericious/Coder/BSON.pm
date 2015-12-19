package Clustericious::Coder::BSON;

use strict;
use warnings;
use BSON ();
use 5.010;

# ABSTRACT: BSON encoder for AutodataHandler
# VERSION

=head1 SYNOPSIS

 % cpanm Clustericious::Coder::BSON

=head1 DESCRIPTION

Simply install this module and any L<Clustericious> 1.12 applications
will automatically handle L<BSON> encoded requests and responses.

=head1 SEE ALSO

L<Clustericious>

=cut

sub coder
{
  my %coder = (
    type   => 'application/bson',
    format => 'bson',
    encode => sub { BSON::encode($_[0]) },
    decode => sub { BSON::decode($_[0]) },
  );
  
  \%coder;
}

1;
