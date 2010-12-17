use strict;
use Test::More;
BEGIN { plan tests => 2 }

BEGIN { $ENV{PERL_JSON_BACKEND} = 0; }

require_ok("JSON::PP::Compat");
if ($] lt '5.006') {
  ok( defined $INC{'JSON/PP5005.pm'}, 'JSON::PP5005 is loaded' );
}
elsif ($] lt '5.008') {
  ok( defined $INC{'JSON/PP56.pm'}, 'JSON::PP56 is loaded' );
}
else {
  ok( !exists $INC{'JSON/PP5005.pm'} && !exists $INC{'JSON/PP56.pm'},
    "Neither helper loaded for Perl $]"
  );
}

