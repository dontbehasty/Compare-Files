#!/usr/local/bin/perl
use strict;
use warnings;

my $file1 = 'actual.log';	
open(INFO, $file1);
my @array1 = <INFO>;
close(INFO);

my $file2 = 'exp.log';	
open(INFO, $file2);
my @array2 = <INFO>;
close(INFO);

open(OUT, ">output.txt") || die("could not write to a file!");

my $j =0;

    for($j=>0;$j<=@array2;$j++)
       {
        if($array1[$j] ne $array2[$j])
          {
            print "$array1[$j]";
            print OUT $array1[$j];
            print "$array2[$j]";
            print OUT $array2[$j];
            $j++;
          }   
        }