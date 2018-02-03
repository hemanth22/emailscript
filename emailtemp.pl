#!/usr/bin/perl
use strict;
use warnings;
use MIME::Lite;
use MIME::Lite::TT::HTML;

my %params;

$params{first_name} = 'Hemanth';
$params{last_name} = 'Bitra';
$params{amt_due} = '1200';

my %options;
$options{INCLUDE_PATH} = '/home/bhemanth';

my $msg = MIME::Lite::TT::HTML->new(
                    From        =>  'bhemanth@localhost',
                    To          =>  'root@localhost',
                    Cc         =>   'bhemanth@localhost',
                    Subject     =>  'Your recent purchase',
                #    Content-type  => 'multipart/mixed',
                    TimeZone => 'Asia/Kolkata',
                    Template    =>  {
                                        text    =>  'test.txt.tt',
                                        html    =>  'test.html.tt',
                                    },
                    TmplOptions =>  \%options,
                    TmplParams  =>  \%params,
                    Type        =>  'multipart/mixed',
                                  Path        =>  '/home/bhemanth/Desktop/LL.pdf',
                                  Filename    =>  'LL.pdf',
                                  Disposition =>  'attachment'
);
# Set our content type properly
      #   $msg->attr("content-type"  => "multipart/mixed");

         # Attach a PDF to the message
        # $msg->attach(
         #);
$msg->send;
