#!/usr/bin/perl
use JSON;
use Data::Dumper;
use HTML::Entities;

# 20140512 (ed@s5h.net)
# this script helps get mail back from the evil clutches of yahoo.
# do whatever you want with it

binmode STDOUT, ':utf8';
my $json = <>;

if( $json !~ /^{"ygPerms":/ ) {
	die "no can do, buckeroo";
}

my $entity = decode_json( $json );

my $message = join( "", split( //, $entity->{'ygData'}->{'rawEmail'} ) );
print decode_entities( $message ), "\n";

