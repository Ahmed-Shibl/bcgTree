package bcgTree;

use 5.010000;
use strict;
use warnings;
use Log::Log4perl qw(:no_extra_logdie_message);
use File::Path qw(make_path);

our $VERSION = '0.1';

# init a root logger in exec mode
Log::Log4perl->init(
	\q(
                log4perl.rootLogger                     = DEBUG, Screen
                log4perl.appender.Screen                = Log::Log4perl::Appender::Screen
                log4perl.appender.Screen.stderr         = 1
                log4perl.appender.Screen.layout         = PatternLayout
                log4perl.appender.Screen.layout.ConversionPattern = [%d{MM-dd HH:mm:ss}] [%C] %m%n
        )
);

my $L = Log::Log4perl::get_logger();

sub new {
      my $class = shift;
      my $proteome = shift;
      return bless {'proteome'=>$proteome}, $class;
}

sub check_existence_of_fasta_files{
	my $self = shift;
	my %proteome = %{$self->{proteome}};
	foreach(keys %proteome){
	    $L->logdie("File not found: ".$proteome{$_}) unless(-f $proteome{$_});
	}
}

sub create_outdir_if_not_exists{
	my $self = shift;
	my $outdir = shift;
	make_path($outdir, {error => \my $err});
	if (@$err)
	{
	    for my $diag (@$err) {
			my ($file, $message) = %$diag;
			if ($file eq '') {
				$L->logdie("Creating folder failed with general error: $message");
			}
			else {
				$L->logdie("Creating folder failed for folder '$file': $message");
			}
	    }
	}
}

1;

=head1 AUTHORS

=over

=item * Markus Ankenbrand, markus.ankenbrand@uni-wuerzburg.de

=item * Alexander Keller, a.keller@biozentrum.uni-wuerzburg.de

=back
