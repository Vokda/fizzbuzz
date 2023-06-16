#!/usr/bin/perl

print fizzbuzz($_) . "\n" for (1 .. 100);

sub fizzbuzz
{
	my ($n) = shift;
	my $fizzbuzz = "";
	$fizzbuzz .= "Fizz" if($n % 3 == 0);
	$fizzbuzz .= "Buzz" if($n % 5 == 0);
	return $fizzbuzz ? $fizzbuzz : $n;
}
