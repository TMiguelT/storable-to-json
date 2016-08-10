# Imports
use warnings;
use strict;
use Storable qw(retrieve);
use JSON qw(to_json);# -convert_blessed_universally;
use Data::Clean::JSON qw(clean_json_in_place clone_and_clean_json);
use Data::Structure::Util qw( unbless );
use Getopt::Long;

# Arguments
my $pretty;
my $file = $ARGV[0];
unless ($file && -f $file && GetOptions("pretty-print" => \$pretty)){
  usage();
}

# If they input arguments wrongly, show usage
sub usage {
  print "Usage: \n";
  print "    perl $0 storable_file\n";
  print "    [--pretty-print, -p]\n";
  exit 0;
}

# Process file and output
my $root = retrieve($file);
unbless($root);
clean_json_in_place($root);
print to_json($root, {utf8 => 1, pretty => $pretty});
