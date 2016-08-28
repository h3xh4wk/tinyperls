#!/usr/bin/perl
use Test::Simple 'no_plan';

print("starting test execution using ant ... !!\n");

open(PS,'ant |') || die "Failed: $!\n";
my $line;
my $desc;

#$|=1;
while ( <PS> )
{
    $line = $_;
    
    if ($line =~ /.*main(.*)/){# processing only the test case outputs 
        ok(&check_failure($line)==1,$1);
    }
    
    
}

sub check_failure
{
    my $line = $_[0];

    #print $line;
    if ($line=~/.*9.*/)
    {
        return 0;
    }else{
        return 1;
    }
}

close(PS);

print("finished test execution using ant ... !!\n");