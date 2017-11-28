#!/usr/bin/perl

use URI::URL;
use LWP::Simple;
use LWP::UserAgent;
use Term::ANSIColor;
use HTTP::Request;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);


system(($^O eq 'MSWin32') ? 'cls' : 'clear');

print colored ("\t Coded By dr-iman Guardiran Security Team 'Guardiran.org' ", 'bold red'), "\n";

print "\n\n";
print colored (".##...##..#####...######.", 'bold green'), "\n";                       
print colored (".###.###..##..##..##.....", 'bold green'), "\n";                       
print colored (".##.#.##..##..##...####..", 'bold green'), "\n";                       
print colored (".##...##..##..##......##.", 'bold green'), "\n";                       
print colored (".##...##..#####...#####..", 'bold green'), "\n\n";                       
                      
print colored ("..####...##..##..##......######..##..##..######.", 'bold white'), "\n";
print colored (".##..##..###.##..##........##....###.##..##.....", 'bold white'), "\n";
print colored (".##..##..##.###..##........##....##.###..####...", 'bold white'), "\n";
print colored (".##..##..##..##..##........##....##..##..##.....", 'bold white'), "\n";
print colored ("..####...##..##..######..######..##..##..######.", 'bold white'), "\n\n";

print colored (".######...####....####...##.......####..", 'bold red'), "\n";        
print colored ("...##....##..##..##..##..##......##.....", 'bold red'), "\n";        
print colored ("...##....##..##..##..##..##.......####..", 'bold red'), "\n";        
print colored ("...##....##..##..##..##..##..........##.", 'bold red'), "\n";        
print colored ("...##.....####....####...######...####..", 'bold red'), "\n";          

print "\n Select Method : 1-Decrypt MD5 2-Encrypt MD5 : ";
$hash = <STDIN>;
chomp ($hash);

if ( $hash eq "1" or $hash eq "Decrypt MD5" )
{
print "\n Enter Your Hash :";
$md5 = <STDIN>;
$dec ="https://md5db.net/api/$md5";
decrypt();
}

sub decrypt($dec){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);


my $decrypt = $ua->get("$dec")->content;
print "\n Result : $decrypt\n";
}


if ( $hash eq "2" or $hash eq "Encrypt MD5" )
{
print "\n Enter Your Text or number : ";
$text = <STDIN>;
$enc ="https://steakovercooked.com/api/md5/?s=$text";
encrypt();
}

sub encrypt($enc){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);


my $encrypt = $ua->get("$enc")->content;
print "\n Result : $encrypt\n";
}