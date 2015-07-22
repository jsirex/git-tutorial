use HTML::WikiConverter;
use File::Slurp;
my $filename=shift or die "use $0 html_file";
my $html = read_file( $filename ) ;
my $wc = new HTML::WikiConverter( dialect => 'Markdown' );
print $wc->html2wiki( $html );
